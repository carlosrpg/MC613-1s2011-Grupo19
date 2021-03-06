LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY latchD IS
	PORT ( T, Clk , Clear : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
END latchD ;
ARCHITECTURE Behavior OF latchD IS
	BEGIN
	
	PROCESS ( T, Clk, Clear)
			BEGIN
			IF Clear = '1' THEN
				Q<='0';
			ELSIF Clk = '1' THEN
					Q<=T;
			END IF ;
	END PROCESS ;
END Behavior ;