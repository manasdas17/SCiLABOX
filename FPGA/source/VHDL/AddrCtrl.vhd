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

begin

	
	process(Wclk,Clrw)
end AddrCtrl_beh;

