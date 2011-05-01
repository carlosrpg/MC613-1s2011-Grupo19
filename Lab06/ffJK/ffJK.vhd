LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY ffJK IS
PORT ( J, K, Clk, Clear : IN STD_LOGIC ;
Q : OUT STD_LOGIC) ;
END ffJK ;
ARCHITECTURE Behavior OF ffJK IS
SIGNAL state : STD_LOGIC;
BEGIN
	PROCESS ( Clk )
		BEGIN
		IF  Clk = '1' THEN	
			IF Clear = '1' THEN
				state <= '0' ;	
			ELSIF (J='1' AND K='1') THEN
				state <= NOT(state);
			ELSIF K='1' THEN
				state<='0';
			ELSIF J='1'THEN
				state<='1';
			END IF ;
		END IF ;
	END PROCESS ;
	Q<=state;
END Behavior ;