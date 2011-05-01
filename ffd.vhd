LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY ffd IS
PORT ( D, Clk, Clear : IN STD_LOGIC ;
Q : OUT STD_LOGIC) ;
END ffd ;
ARCHITECTURE Behavior OF ffd IS
BEGIN
	PROCESS ( Clk, Clear)
		BEGIN
		IF Clear = '1' THEN
		Q <= '0' ;
		ELSIF Clk'EVENT AND Clk = '1' THEN
		Q <= D ;
		END IF ;
	END PROCESS ;
END Behavior ;