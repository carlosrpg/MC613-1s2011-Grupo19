LIBRARY ieee ;
	USE ieee.std_logic_1164.all ;
	USE work.lib_mc613_grupo1.all ;

ENTITY ripple_16 IS
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (15 downto 0) ;
		y: IN STD_LOGIC_VECTOR (15 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (15 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
END ripple_16 ;

ARCHITECTURE ripple OF ripple_16 IS
	BEGIN
		ripple16: ripple_carry_4
			GENERIC MAP (16)
			PORT MAP(
				C_in,
				x,
				y,
				s,
				C_out,
				OverFlow
				) ;
END ripple ;