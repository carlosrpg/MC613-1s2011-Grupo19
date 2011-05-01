LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_arith.all ;


ENTITY barrel_shifter IS
	Generic(
		n: INTEGER := 4 ;
		counter : INTEGER := 0
		);
	PORT (
		A : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		--direction : IN STD_LOGIC; --0 to left and 1 to right
		--counter : IN INTEGER;
		output : out STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		);
END barrel_shifter;

ARCHITECTURE behavior OF barrel_shifter IS
	--SIGNAL AUX: STD_LOGIC_VECTOR(n+63 DOWNTO 0);
	--SIGNAL zero: STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	output(n-1 downto counter) <= A(n-counter-1 DOWNTO 0);
	output(counter-1 downto 0) <= A(n-1 DOWNTO n-counter);
	--zero <= conv_std_logic_vector(0, 32);
	--AUX <= zero & A & zero;
	
	--output <= AUX(31+counter+n-1 DOWNTO 31+counter) WHEN direction='0' ELSE AUX(31-counter+n-1 DOWNTO 31-counter);
END behavior ;