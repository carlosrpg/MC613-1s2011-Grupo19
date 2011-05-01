LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY componenteFig3 IS
	PORT (
		y : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		f : OUT STD_LOGIC 
		) ;
END componenteFig3 ;

ARCHITECTURE Behavior OF componenteFig3 IS
	Signal Aux: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	
	Aux(3) <= y(3) AND W(3);
	Aux(2) <= y(2) AND W(2);
	Aux(1) <= y(1) AND W(1);
	Aux(0) <= y(0) AND W(0);
	
	f <= Aux(3) OR Aux(2) OR Aux(1) OR Aux(0);
			
END Behavior ;