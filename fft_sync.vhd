LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY fft_sync IS
PORT ( T, Clk, Clear : IN STD_LOGIC ;
Q : OUT STD_LOGIC) ;
END fft_sync ;
ARCHITECTURE Behavior OF fft_sync IS
SIGNAL state : STD_LOGIC;
BEGIN
	PROCESS ( Clk, Clear)
		BEGIN
		IF Clk = '1' AND Clear = '1' THEN
			state <= '0' ;
		ELSIF Clk'EVENT AND Clk = '1' AND T='1' THEN
			state <= NOT(state) ;
		END IF ;
	END PROCESS ;
	Q<=state;
END Behavior ;