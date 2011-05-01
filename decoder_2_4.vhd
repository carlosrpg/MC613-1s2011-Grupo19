LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY decoder_2_4 IS
	PORT (
		w : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		En : IN STD_LOGIC ;
		y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
		) ;
END decoder_2_4 ;

ARCHITECTURE Behavior OF decoder_2_4 IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0) ;
BEGIN
	Enw <= En & w;
	WITH Enw SELECT
		y <= "0001" WHEN "100",
			"0010" WHEN "101",
			"0100" WHEN "110",
			"1000" WHEN "111",
			"0000" WHEN OTHERS ;
END Behavior ;