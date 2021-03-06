LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY latchSR IS
PORT ( S, R, EN, Clear : IN STD_LOGIC ;
Q : OUT STD_LOGIC) ;
END latchSR ;
ARCHITECTURE Behavior OF latchSR IS
BEGIN
	PROCESS ( Clear, EN, S, R)
		BEGIN
		IF Clear = '1' THEN
			Q <= '0' ;
		ELSIF EN='1' THEN
			IF (S='1' AND R = '0') THEN
				Q<='1';
			ELSE
				Q<='0';
			END IF ;
		END IF;
	END PROCESS ;
END Behavior ;