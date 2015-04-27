entity AddrCtrl is
	port
		(
			Clrw	: in	std_logic;
			Wclk	: in	std-logic;
			Start	: in	std_logic;
			nRclk	: in	std_logic;
			RE	: in	std_logic;
			H_L	: in	std_logic;
			Depth	: in	std_logic_vector(11 downto 0);
			PerCnt	: in	std-logic_vector(11 downto 0);
			Delay	: in	std_logic_vector(31 downto 0);
			Sampled	: out	std_logic;
			Ready	: out	std_logic;
			Full	: out	std_logic;
			Empty	: out	std_logic;
			Wptr	: out	std_logic_vector(11 downto 0);
			Rptr	: out	std_logic_vector(11 downto 0)	
		);


architecture AddrCtrl_beh of AddrCtrl is

signal iclk	: std_logic	:='0';

begin
	iClk<=wclk or Clrw;
	
	process(iclk)
	begin
		if (iClk='1' and iClk'event) then
			if Clrw='1' then
				Full<='0';
				Pcnt<='0';
				Sampled<='0';
				DelayCnt<='0';
				Ready='0';
			else
			begin
				if Start='1' then
					DelayCnt<=DelayCnt+'1';
				end if;
				if pcnt>=PerCnt then
					Sampled<='1';
				end if;
				if Full='0' then
					Wptr<=Wptr+1;
				end if;
				if Pcnt>=depth then
					Full<=Ready;
				else
					Pcnt<=Pcnt+1;
				end if;
			end if;
		end if;
	end
end AddrCtrl_beh;
