LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all;

ENTITY mux_4_1 IS
	PORT (
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		f : OUT STD_LOGIC 
		) ;
END mux_4_1 ;

ARCHITECTURE Behavior OF mux_4_1 IS
	Signal Aux, AuxComponent: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	Decoder: decoder_2_4 PORT MAP(
				s(1 downto 0),
				'1',
				AuxComponent(3 DOWNTO 0)
			);

	Componente: componenteFig3 PORT MAP ( 
				w(3 DOWNTO 0),
				AuxComponent(3 DOWNTO 0), 
				f
			);
			
END Behavior ;