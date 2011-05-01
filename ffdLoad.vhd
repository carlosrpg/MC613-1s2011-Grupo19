LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY ffdLoad IS
PORT ( D, Load, Clk, Clear : IN STD_LOGIC ;
		Q : OUT STD_LOGIC) ;
END ffdLoad ;
ARCHITECTURE Behavior OF ffdLoad IS
BEGIN
	PROCESS ( Clk, Clear)
		BEGIN
		IF Clear = '1' THEN
		Q <= '0' ;
		ELSIF Clk'EVENT AND Clk = '1' AND Load='1' THEN
		Q <= D ;
		END IF ;
	END PROCESS ;
END Behavior ;