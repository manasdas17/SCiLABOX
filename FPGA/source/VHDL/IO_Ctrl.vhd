entity IO_Ctrl is
	port
		(
			CE			: in	std_logic;
			nRD			: in	std_logic;
			SCK			: in	std_logic;
			SDA			: in	std_logic;
			Dout		: in	std_logic_vector(17 downto 0);
			Start		: in	std_logic;
			Full		: in	std_logic;
			Empty		: in	std_logic;
			H_L			: in	std_logic;
			C_D			: in	std_logic;
			A_Edge		: in	std_logic_vector(15 downto 0);
			A_TL		: in	std_logic_vector(15 downto 0);
			A_TH		: in	std_logic_vector(15 downto 0);
			B_Eddge		: in	std_logic_vector(15 downto 0);
			B_TL		: in	std_logic_vector(15 downto 0);
			B_TH		: in	std_logic_vector(15 downto 0);
			C_Edge		: in	std_logic_vector(15 downto 0);
			C_TL		: in	std_logic_vector(15 downto 0);
			C_TH		: in	std_logic_vector(15 downto 0);
			D_Edge		: in	std_logic_vector(15 downto 0);
			D_TL		: in	std_logic_vector(15 downto 0);
			D_TH		: in	std_logic_vector(15 downto 0);
			Depth		: out	std_logic_vector(11 downto 0);
			PecCnt		: out	std_logic_vector(11 downto 0);
			Delay		: out	std_logic_vector(31 downto 0);
			nPD			: out	std_logic;
			Trigg_Mode	: out	std_logic_vector( 7 downto 0);
			Vthreshold	: out	std_logic_vector( 7 downto 0);
			Tthreshold	: out	std_logic_vector(15 downto 0);
			
		);
