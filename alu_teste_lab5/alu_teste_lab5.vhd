LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;
USE work.adder_package.all ;

ENTITY alu_teste_lab5 IS
    GENERIC(width: integer := 4);  
	PORT( 
		aluop:   in  STD_LOGIC_VECTOR(1 downto 0);  
		funct:   in  STD_LOGIC_VECTOR(5 downto 0);  
		a, b:    in  STD_LOGIC_VECTOR (width-1 downto 0);  
		result:  out STD_LOGIC_VECTOR (width-1 downto 0)  
	);  
END alu_teste_lab5; 


ARCHITECTURE behavior OF alu_teste_lab5 IS
	SIGNAL trans_cont: STD_LOGIC_VECTOR (2 downto 0);
BEGIN
	alu_ctrl: alucontrol
		PORT MAP (
			aluop,
			funct,
			trans_cont
			);
	alu_unit: alu
		GENERIC MAP(
			width
		)
		PORT MAP (
			a,b,
			trans_cont,
			result
		);
END behavior ;