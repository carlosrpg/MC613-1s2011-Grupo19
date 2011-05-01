LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;

ENTITY registerAsyncClear IS
	Generic(
		n: INTEGER := 4
	);
	PORT (  input : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0) ;
			Load, Clk , Clear : IN STD_LOGIC ;
			output : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
			
	) ;
END registerAsyncClear ;

ARCHITECTURE Behavior OF registerAsyncClear IS
BEGIN
	registers :
	FOR i IN 0 TO n-1 GENERATE
		bitRegister  : ffdLoad PORT MAP(input(i),Load,Clk,Clear,output(i) );
	END GENERATE;
END Behavior ;