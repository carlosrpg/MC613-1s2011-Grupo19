LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;
use ieee.std_logic_arith.all;

ENTITY alu IS
	Generic(
		n: INTEGER := 4
	);
	PORT (
		A: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		s: IN STD_LOGIC_VECTOR(0 TO 1);
		F: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		z,c,v : OUT STD_LOGIC
		);
END alu;

ARCHITECTURE comportamento OF alu IS
	SIGNAL inputA, inputB, output, zero : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL c_in : STD_LOGIC;
	
BEGIN
	zero <= conv_std_logic_vector(0, n);
	WITH s SELECT
		inputA <= NOT(A) WHEN "01",
				  A WHEN OTHERS;
	WITH s SELECT
		c_in <= '1' WHEN "10",
				  '0' WHEN OTHERS;
	WITH s SELECT
		inputB <= 	B WHEN "00",
					NOT(B) WHEN "10",
					zero WHEN "01",
					NOT(zero) WHEN OTHERS;
					
	z <= '1' WHEN output=zero ELSE '0';
	alu: ripple_carry_4
		GENERIC MAP(n)
		PORT MAP(c_in, inputA, inputB, output, c,v);
	F<=output;

END comportamento ;