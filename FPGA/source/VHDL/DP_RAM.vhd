//**********************(C) COPYRIGHT 2015 SCiMOS********************
//              4096 * 18 bits dual-port SRAM module                *
//*******************************************************************
entity DP_RAM is
port
	(
		Din	: in	std_logic_vector(17 downto 0);
		Wclk	: in	std_logic;
		nRclk	: in	std_logic;
		Waddr	: in	std_logic;
		raddr	: in	std_logic;
		Dout	: out	std_logic_vector(17 downto 0)
	);


architecture DP_RAM_beh of DP_RAM is
type memType is array(17 downto 0);
signal memData : memType(4095 downto 0);
begin

	wrMem:
	process(Wclk)
	begin
		if Wclk='1' and Wclk'event then
			memData[Waddr]<=Din;
		end if;
	end

	rdMem:
	process(nRclk)
	begin
		if nRclk='1' and nRclk'event then
			Dout<=memData[Raddr];
		end if;
	end

end
