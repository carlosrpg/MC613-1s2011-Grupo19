Library ieee;
USE ieee.std_logic_1164.all;

Entity full_adder IS
	PORT (
		C_IN: IN STD_LOGIC;
		INPUT_1: IN STD_LOGIC;
		INPUT_2: IN STD_LOGIC;
		C_OUT:	 OUT STD_LOGIC;
		OUTPUT:  OUT STD_LOGIC
		);
END full_adder;

Architecture adder of full_adder is
	Begin
		OUTPUT <= INPUT_1 XOR INPUT_2 XOR C_IN ; 
		C_OUT<= (INPUT_1 AND INPUT_2) OR (C_IN AND INPUT_1) OR (C_IN AND INPUT_2) ;
End adder;