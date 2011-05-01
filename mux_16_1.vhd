LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all;

ENTITY mux_16_1 IS
	PORT (
		s : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		w : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		f : OUT STD_LOGIC 
		) ;
END mux_16_1 ;

ARCHITECTURE Behavior OF mux_16_1 IS
	SIGNAL aux : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	SIGNAL INPUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
		BEGIN
				INPUT <= "0000001000000000";	
		mux16to1: FOR i IN 0 TO 3 GENERATE
			Muxes: mux_4_1 PORT MAP (
						s(1 DOWNTO 0),
						INPUT(4*i+3 DOWNTO 4*i),
						aux(i) 
						);
		END GENERATE ;
		Mux5: mux_4_1 PORT MAP( 
					s(3 DOWNTO 2),
					aux(3 DOWNTO 0),
					f 
					) ;
END Behavior ;