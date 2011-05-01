Library ieee ;
use ieee.std_logic_1164.all;
use work.lib_mc613_grupo1.all ;

ENTITY display_7seg IS
	PORT (
		s: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		w: OUT STD_LOGIC_VECTOR (0 TO 6)
		);
END display_7seg;

ARCHITECTURE BOLINHA OF display_7seg IS
--Declarações de portas internas
	SIGNAL a: STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	CONVERSOR_GRAY: gray2bin PORT MAP
	(s(3 DOWNTO 0), a(3 DOWNTO 0));
	
	CONVERSOR_7SEG: conv_7seg PORT MAP
	(a(3 DOWNTO 0), w(0 TO 6));
	
END BOLINHA;
