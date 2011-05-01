Library ieee;
USE ieee.std_logic_1164.all;

Entity crossbar_switch IS
	Generic (n : integer := 3 ) ;
	PORT (
		Input_1: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		Input_2: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		S: IN STD_LOGIC;
		OUTPUT_1: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		OUTPUT_2: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		);
END crossbar_switch;

Architecture crossbar of crossbar_switch is
	Begin
		Process (Input_1, Input_2, S)
		Begin
			If S = '1' then
				output_1 <= input_2;
				output_2 <= input_1;
			Else
				output_1 <= input_1;
				output_2 <= input_2;
			End If;
		End Process;
End crossbar;