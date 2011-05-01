LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY ffsr IS
PORT ( S, R, Clk, Clear : IN STD_LOGIC ;
Q : OUT STD_LOGIC) ;
END ffsr ;
ARCHITECTURE Behavior OF ffsr IS
BEGIN
	PROCESS ( Clk , Clear)
		BEGIN
		IF Clear = '1' THEN
				Q <= '0' ;
		ELSIF Clk'EVENT AND Clk = '1' THEN		
			IF (R='1' AND S='1') THEN
				Q <= 'X';
			ELSIF R='1' THEN
				Q<='0';
			ELSIF S='1'THEN
				Q<='1';
			END IF ;
		END IF ;
	END PROCESS ;
END Behavior ;