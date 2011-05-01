LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;
USE work.adder_package.all;
use ieee.std_logic_arith.all;

ENTITY alu IS
	Generic(
		n: INTEGER := 4
	);
	PORT (
		A,B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		ALUCONT: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		RESULT: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
		);
END alu;

ARCHITECTURE comportamento OF alu IS
	SIGNAL inputA, inputB, output, zero, one : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL c_in, c_out, v_out: STD_LOGIC;
	
BEGIN
	zero <= conv_std_logic_vector(0, n);
	one <= conv_std_logic_vector(1, n);
	
	c_in   <= '1'    WHEN ALUCONT="110" OR ALUCONT="111" ELSE '0';
	inputB <= NOT(B) WHEN ALUCONT="110" OR ALUCONT="111" ELSE B;				
	inputA <= A;
	
	alu_adder: ripple_n
		GENERIC MAP(n)
		PORT MAP(c_in, inputA, inputB, output, c_out, v_out);
	
		RESULT <= 	output  	WHEN ALUCONT = "110" ELSE 
					output 		WHEN ALUCONT = "010" ELSE
					(A AND B) 	WHEN ALUCONT = "000" ELSE
					(A OR B )	WHEN ALUCONT = "001" ELSE
					(zero)		WHEN ALUCONT = "111" AND ((output(n-1)='0' AND v_out='0') OR (output(n-1)='1' AND v_out='1')) ELSE
					(one)		WHEN ALUCONT = "111" AND ((output(n-1)='1' AND v_out='0') OR (output(n-1)='0' AND v_out='1')) ELSE
					zero;
					

END comportamento ;