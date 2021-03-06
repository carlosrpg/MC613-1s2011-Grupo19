LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;

ENTITY s_7seg_overflow IS
	PORT (
		in_1: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		in_2: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		c_in: IN STD_LOGIC;
		disp: OUT STD_LOGIC_VECTOR(0 to 6);
		c, v: OUT STD_LOGIC
		);
END s_7seg_overflow;

ARCHITECTURE behavior OF s_7seg_overflow IS
	signal aux: STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	ripple: ripple_carry_4 GENERIC MAP(
			4
			)
			PORT MAP(
			c_in,
			in_1,
			in_2,
			aux,
			c,
			v
		) ;
	
	conv7seg: conv_7seg PORT MAP(
		aux,
		disp
		);

END behavior ;