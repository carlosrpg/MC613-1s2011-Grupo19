Library ieee;
USE ieee.std_logic_1164.all;

Entity crossbar_switch IS
	PORT (
		INPUT: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		S: IN STD_LOGIC;
		OUTPUT: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
		);
END crossbar_switch;

Architecture crossbar of crossbar_switch is
	Begin
		Process (INPUT, S)
		Begin
			If S = '1' then
				OUTPUT(1) <= INPUT(0);
				OUTPUT(0) <= INPUT(1);
			Else
				OUTPUT <= INPUT;
			End If;
		End Process;
End crossbar;





