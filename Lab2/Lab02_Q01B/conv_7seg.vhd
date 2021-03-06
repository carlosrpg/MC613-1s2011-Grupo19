LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY conv_7seg IS
	PORT (
		s: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		f: OUT STD_LOGIC_VECTOR(0 to 6) );
END conv_7seg;

ARCHITECTURE Converter OF conv_7seg IS
	Signal x: STD_LOGIC_VECTOR(0 to 6);
BEGIN
	WITH s SELECT
		x <= "1111110" WHEN "0000" ,
			"0110000" WHEN "0001",
			"1101101" WHEN "0010",
			"1111001" WHEN "0011",
			"0110011" WHEN "0100",
			"1011011" WHEN "0101",
			"1011111" WHEN "0110",
			"1110000" WHEN "0111",
			"1111111" WHEN "1000",
			"1110011" WHEN "1001",
			"1110111" WHEN "1010",
			"0011111" WHEN "1011",
			"1001110" WHEN "1100",
			"0111101" WHEN "1101",
			"1001111" WHEN "1110",
			"1000111" WHEN "1111";

	f <= NOT(x);
END Converter ;