LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Lab01_VHDL IS
	PORT ( 
	A, B, C, D, E : IN STD_LOGIC ;
	F : OUT STD_LOGIC ) ;
END Lab01_VHDL ;

ARCHITECTURE FunctionLab01 OF Lab01_VHDL IS
	SIGNAL a1, a2, a3, a4, a5 : STD_LOGIC ;
BEGIN
	F <= a1 OR a2 OR a3 OR a4 OR a5;
	a1 <= B AND C AND E;
	a2 <= C AND (NOT D) AND E;
	a3 <= (NOT B) AND (NOT C) AND D AND (NOT E);
	a4 <= B AND (NOT C) AND (NOT D) AND (NOT E);
	a5 <= (NOT A) AND (NOT C) AND (NOT D) AND (NOT E);
END FunctionLab01 ;
