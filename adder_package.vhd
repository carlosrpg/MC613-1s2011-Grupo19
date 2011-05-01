LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE adder_package IS

	COMPONENT ripple_8
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (7 downto 0) ;
		y: IN STD_LOGIC_VECTOR (7 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (7 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
	END COMPONENT ;

	
	COMPONENT ripple_16
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (15 downto 0) ;
		y: IN STD_LOGIC_VECTOR (15 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (15 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
	END COMPONENT ;

	
	COMPONENT ripple_32
	PORT ( 
		C_in : IN STD_LOGIC ;
		x: IN STD_LOGIC_VECTOR (31 downto 0) ;
		y: IN STD_LOGIC_VECTOR (31 downto 0) ;
		s: OUT STD_LOGIC_VECTOR (31	 downto 0) ;
		C_out : OUT STD_LOGIC;
		OverFlow: OUT STD_LOGIC
		) ;
	END COMPONENT;

	COMPONENT ripple_n IS
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

END adder_package;

