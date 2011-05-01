LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;

ENTITY q02 IS
	PORT (  input : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			Load, Clk , Clear : IN STD_LOGIC ;
			output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			
	) ;
END q02 ;

ARCHITECTURE Behavior OF q02 IS
Signal regOutput : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	register4bits  : registerAsyncClear
			GENERIC MAP(n => 4)
			PORT MAP(input,Load,Clk,Clear,regOutput);
	display : conv_7seg PORT MAP(regOutput, output);
END Behavior ;