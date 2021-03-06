LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY LatchD IS
	PORT ( D, Clk , Clear : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
END LatchD ;
ARCHITECTURE Behavior OF LatchD IS
	BEGIN
	PROCESS ( D, Clk , Clear)
			BEGIN
			IF Clear = '1' THEN
				Q<='0';
			ELSIF Clk = '1' THEN
				Q <= D ;
			END IF ;
	END PROCESS ;
END Behavior ;