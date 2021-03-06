LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE lib_mc613_grupo1 IS
	COMPONENT conv_7seg
		PORT (
			s: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			f: OUT STD_LOGIC_VECTOR(6 downto 0) 
			);
	END COMPONENT ;
	
	COMPONENT gray2bin
		PORT (
			w: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
			);
	END COMPONENT;
	
	COMPONENT crossbar_switch IS
		Generic (n : integer := 8 ) ;
		PORT (
			Input_1: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			Input_2: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			S: IN STD_LOGIC;
			OUTPUT_1: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			OUTPUT_2: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0)
			);
	END COMPONENT;
	
	COMPONENT decoder_2_4 IS
		PORT (
			w : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			En : IN STD_LOGIC ;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
		) ;
	END COMPONENT;
	
	COMPONENT componenteFig3 IS
	PORT (
		y : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		f : OUT STD_LOGIC 
		) ;
	END COMPONENT;
	
	COMPONENT mux_4_1 IS
	PORT (
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		w : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		f : OUT STD_LOGIC 
		) ;
	END COMPONENT;
	
	COMPONENT full_adder IS
	PORT (
		C_IN: IN STD_LOGIC;
		INPUT_1: IN STD_LOGIC;
		INPUT_2: IN STD_LOGIC;
		C_OUT:	 OUT STD_LOGIC;
		OUTPUT:  OUT STD_LOGIC
		);
	END COMPONENT;	
	
	COMPONENT ripple_carry_4 IS
	Generic(
		n: INTEGER 
		);
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		y: IN STD_LOGIC_VECTOR (n-1 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (n-1 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
	END COMPONENT ;
	
	COMPONENT signed7seg IS
	PORT (
		s: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		out1: OUT STD_LOGIC_VECTOR(6 downto 0) ;
		out2: OUT STD_LOGIC_VECTOR(6 downto 0) );
	END COMPONENT;
	
	--COMPONENT alu IS
	--Generic(
	--	n: INTEGER
	--);
	--PORT (
	--	A: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	--	B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	--	s: IN STD_LOGIC_VECTOR(0 TO 1);
	--	F: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	--	z,c,v : OUT STD_LOGIC
	--	);
	--END COMPONENT;

	COMPONENT barrel_shifter IS
	Generic(
		n: INTEGER := 4 ;
		counter : INTEGER := 0
		);
	PORT (
		A : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		output : out STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT alu IS
	Generic(
		n: INTEGER := 4
	);
	PORT (
		A,B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		ALUCONT: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		RESULT: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT alucontrol is   
    PORT( 
        aluop:   IN  STD_LOGIC_VECTOR(1 downto 0);  
        funct:   IN  STD_LOGIC_VECTOR(5 downto 0);  
        alucont: OUT STD_LOGIC_VECTOR(2 downto 0) 
        );  
	END COMPONENT; 	

	COMPONENT ffd IS
	PORT ( 	D, Clk, Clear : IN STD_LOGIC ;
						Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	
	COMPONENT fft_sync IS
	PORT ( 	T, Clk, Clear : IN STD_LOGIC ;
						Q : OUT STD_LOGIC) ;
	END COMPONENT ;

	COMPONENT ffJK_sync IS
	PORT (	 J, K, Clk, Clear : IN STD_LOGIC ;
							Q : OUT STD_LOGIC) ;
	END COMPONENT ;

	COMPONENT ffsr IS
	PORT ( 	 S, R, Clk, Clear : IN STD_LOGIC ;
							Q : OUT STD_LOGIC) ;
	END COMPONENT ;

	COMPONENT latchD IS
		PORT ( T, Clk , Clear : IN STD_LOGIC ;
							Q : OUT STD_LOGIC) ;
	END COMPONENT ;

	COMPONENT latchSR IS
	PORT (S, R, EN, Clear : IN STD_LOGIC ;
						Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	
	COMPONENT ffdLoad IS
	PORT ( D, Load, Clk, Clear : IN STD_LOGIC ;
			Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	
	COMPONENT registerAsyncClear IS
	Generic(
		n: INTEGER :=4
	);
	PORT (  input : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0) ;
			Load, Clk , Clear : IN STD_LOGIC ;
			output : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
			
	) ;
	END COMPONENT ;
	
END lib_mc613_grupo1;

