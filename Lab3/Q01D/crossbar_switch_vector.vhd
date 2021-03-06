Library ieee;
USE ieee.std_logic_1164.all;
USE work.lib_mc613_grupo1.all ;

Entity crossbar_switch_vector IS
		Generic (
			n: Integer := 3;
			m: Integer := 3
			);
		
	PORT (
		INPUT_1: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		INPUT_2: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		S: 		 IN STD_LOGIC_VECTOR (m-1  DOWNTO 0);
		OUTPUT_1: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		OUTPUT_2: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		);
END crossbar_switch_vector;

Architecture crossbar of crossbar_switch_vector is
	Signal AUX: STD_LOGIC_VECTOR ( (2*m*n + 2*n -1) DOWNTO 0);
	Begin
		Process (AUX, INPUT_1, INPUT_2)
		Begin
			for k in 0 TO n-1 loop
				AUX(k) <= INPUT_1(k);
				AUX(n+k) <= INPUT_2(k);
				OUTPUT_1(k) <= AUX( (2*(m-1) +2)*n + k );
				OUTPUT_2(k) <= AUX( (2*(m-1) +3)*n +k);
			End loop;
		End process;
		
		Generate_Crossbar: for i in 0 to m-1 GENERATE
			crossbar_i: crossbar_switch
				generic map (n)
				Port map (
					AUX(((2*i + 1)*n -1) DOWNTO 2*i*n),
					AUX(((2*i +2)*n -1) DOWNTO (2*i +1)*n),
					S(i),
					AUX(((2*i +3)*n -1) DOWNTO (2*i +2)*n),
					AUX(((2*i +4)*n -1) DOWNTO (2*i +3)*n)
					);
		End GENERATE;
		
		
End crossbar;