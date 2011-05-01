LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY signed7seg IS
	PORT (
		s: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		out1: OUT STD_LOGIC_VECTOR(6 downto 0) ;
		out2: OUT STD_LOGIC_VECTOR(6 downto 0) );
		
END signed7seg;

ARCHITECTURE Converter OF signed7seg IS
	Signal x, y: STD_LOGIC_VECTOR(6 downto 0);
BEGIN
	WITH s SELECT
		x <= 	"0111111" WHEN "0000", -- 0
				"0000110" WHEN "0001", -- 1
				"1011011" WHEN "0010", -- 2
				"1001111" WHEN "0011", -- 3
				"1100110" WHEN "0100", -- 4
				"1101101" WHEN "0101", -- 5
				"1111101" WHEN "0110", -- 6
				"0000111" WHEN "0111", -- 7
				
				
				"1111111" WHEN "1000", -- -8
				"0000111" WHEN "1001", -- -7
				"1111101" WHEN "1010", -- -6
				"1101101" WHEN "1011", -- -5
				"1100110" WHEN "1100", -- -4
				"1001111" WHEN "1101", -- -3
				"1011011" WHEN "1110", -- -2
				"0000110" WHEN "1111"; -- -1
	WITH s(3) SELECT
		y <= "1000000" WHEN '1',
				"0000000" WHEN '0';
	out1 <= NOT(x);
	out2 <= NOT(y);
END Converter ;