LIBRARY ieee ;
	USE ieee.std_logic_1164.all ;
	USE ieee.std_logic_arith.all ;
	USE work.lib_mc613_grupo1.barrel_shifter ;
	USE work.adder_package.ripple_n ;

ENTITY multiplier IS
	Generic (
		n: INTEGER := 4
		);
		
	PORT ( 
		x: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		y: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		s: OUT STD_LOGIC_VECTOR ( (2*n)-1 downto 0)
		) ;
END multiplier ;

ARCHITECTURE mult OF multiplier IS
	TYPE array_vector IS ARRAY(0 to (2*n) ) OF STD_LOGIC_VECTOR( 2*n -1 downto 0);
	TYPE half_array IS ARRAY(0 to n-1) OF STD_LOGIC_VECTOR (2*n -1 downto 0);
	
	SIGNAL half_vector: half_array;
	SIGNAL vector: array_vector;
	SIGNAL zero: STD_LOGIC_VECTOR (n-1 downto 0);
	SIGNAL carry: STD_LOGIC_VECTOR (n downto 0);
	SIGNAL overflow: STD_LOGIC_VECTOR (n downto 0);
	BEGIN
		zero <= conv_std_logic_vector(0, n);
		
		multip_adders: FOR k IN 0 TO n-1 GENERATE
			case_1: if (k=0) GENERATE
				ripple_1: ripple_n
					GENERIC MAP (
						2*n
					)
					PORT MAP (
					'0',
					vector(2*k),
					zero & zero,
					vector(2*k + 1),
					carry(k),
					overflow(k)
					);
			END GENERATE case_1;
			
			case_n: if (k > 0) GENERATE
				ripple_k: ripple_n
					GENERIC MAP (
						2*n
					)
					PORT MAP (
					carry(k-1),
					vector((2*k)-1),
					vector(2*k),
					vector((2*k)+1),
					carry(k),
					overflow(k)
					);
			END GENERATE case_n;
		END GENERATE multip_adders;	
		
		multip_shift: FOR i IN 0 TO n-1 GENERATE
		Shifters: barrel_shifter 
						GENERIC MAP (
							2*n,
							i
						)
						PORT MAP (
						(zero & x),
						half_vector(i)
						);
		vector(2*i) <= half_vector(i) when y(i)='1' else zero & zero;				
		
		END GENERATE multip_shift;
		
		s <= vector(2*n - 1);
END mult ;