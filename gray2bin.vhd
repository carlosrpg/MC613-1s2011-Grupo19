LIBRARY ieee ; 
USE ieee.std_logic_1164.all ;  

ENTITY gray2bin IS 
	PORT (
		w  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0) ;  
		s  : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) ) ; 
END gray2bin ; 

ARCHITECTURE Converter OF gray2bin IS
BEGIN
		
		s(3) <= w(3);
		s(2) <= (
				( (NOT w(3)) AND w(2) ) OR 
				( w(3) AND (NOT w(2)) )
				);
				
		s(1) <= (((NOT w(3)) AND (NOT w(2)) AND w(1)) OR
				((NOT w(3)) AND w(2) AND (NOT w(1))) OR
				(w(3) AND w(2) AND w(1)) OR
				(w(3) AND (NOT w(2)) AND (NOT w(1))));
		s(0) <= (
				((NOT w(3)) AND (NOT w(2)) AND (NOT w(1)) AND (w(0))) OR
				((NOT w(3)) AND (NOT w(2)) AND ( w(1)) AND (NOT w(0))) OR
				((NOT w(3)) AND ( w(2)) AND (NOT w(1)) AND (NOT w(0))) OR
				((NOT w(3)) AND ( w(2)) AND ( w(1)) AND ( w(0))) OR
				( (w(3)) AND (w(2)) AND (NOT w(1)) AND  ( w(0))) OR
				(( w(3)) AND ( w(2)) AND ( w(1)) AND (NOT w(0))) OR
				(( w(3)) AND (NOT w(2)) AND (NOT w(1)) AND (NOT w(0))) OR
				(( w(3)) AND (NOT w(2)) AND ( w(1)) AND ( w(0)))

				);
END Converter ;