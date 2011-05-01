LIBRARY ieee ;
	USE ieee.std_logic_1164.all ;
	USE work.lib_mc613_grupo1.all ;

ENTITY ripple_32 IS
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (31 downto 0) ;
		y: IN STD_LOGIC_VECTOR (31 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (31	 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
END ripple_32 ;

ARCHITECTURE ripple OF ripple_32 IS
	BEGIN
		ripple32: ripple_carry_4
			GENERIC MAP (32)
			PORT MAP(
				C_in,
				x,
				y,
				s,
				C_out,
				OverFlow
				) ;
END ripple ;