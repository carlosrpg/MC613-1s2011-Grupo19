LIBRARY ieee ; 
USE ieee.std_logic_1164.all ;  
USE work.lib_mc613_grupo1.all ;

ENTITY gray2bin IS 
	PORT (
		w  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0) ;  
		f  : OUT  STD_LOGIC_VECTOR(0 TO 6) ) ; 
END gray2bin ; 

ARCHITECTURE Converter OF gray2bin IS
	SIGNAL s: STD_LOGIC_VECTOR(3 DOWNTO 0);
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
				
		
	-- WITH w SELECT
	--	s <= "0000" WHEN "0000",
	--			"0001" WHEN "0001",
	--			"0010" WHEN "0011",
	--			"0011" WHEN "0010",
	--			"0100" WHEN "0110",
	--			"0101" WHEN "0111",
	--			"0110" WHEN "0101",
	--			"0111" WHEN "0100",
	--			"1000" WHEN "1100",
	--			"1001" WHEN "1101",
	--			"1010" WHEN "1111",
	--			"1011" WHEN "1110",
	--			"1100" WHEN "1010",
	--			"1101" WHEN "1011",
	--			"1110" WHEN "1001",
	--			"1111" WHEN "1000";
	Conversor27Seg: conv_7seg PORT MAP
		(s(3 downto 0), f(0 to 6)); 
END Converter ;