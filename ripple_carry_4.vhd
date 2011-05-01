LIBRARY ieee ;
	USE ieee.std_logic_1164.all ;
	USE work.lib_mc613_grupo1.all ;

ENTITY ripple_carry_4 IS
	Generic(
		n: INTEGER := 4
		);
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		y: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (n-1 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
END ripple_carry_4 ;

ARCHITECTURE ripple OF ripple_carry_4 IS
	SIGNAL carry: STD_LOGIC_VECTOR (n downto 0);
	SIGNAL out_aux: STD_LOGIC_VECTOR (n-1 downto 0);
	BEGIN
		carry(0) <= C_in;
		C_out <= carry(n);
		s <= out_aux;
		adders: FOR i IN 0 TO n-1 GENERATE
			fulladders: full_adder PORT MAP (
				carry(i), x(i), y(i), carry(i+1), out_aux(i)
				) ;
		END GENERATE;
		OverFlow <= carry(n) XOR x(n-1) XOR y(n-1) XOR out_aux(n-1) ;
END ripple ;