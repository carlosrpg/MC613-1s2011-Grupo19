LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.lib_mc613_grupo1.all ;

ENTITY q01 IS
	PORT ( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			Clear , clk : IN STD_LOGIC ;
			s : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
			
	) ;
END q01 ;

ARCHITECTURE Behavior OF q01 IS
BEGIN
	--Os Componentes s�o:
	
	--FlipFlop D com Clear Ass�ncrono
	componente0 : ffd PORT MAP(x(0), Clk, Clear, s(0));
	--FlipFlop SR com Clear Ass�ncrono
	componente1 : ffSR PORT MAP(x(1), x(2),Clk, Clear, s(1));
	--FlipFlop JK com Clear S�ncrono
	componente2	: ffJK_sync PORT MAP(x(1), x(2),Clk, Clear, s(2));
	--FlipFlop T com Clear S�ncrono
	componente3	: fft_sync PORT MAP(x(3), Clk, Clear, s(3));
	--Latch D com Clear Ass�ncrono
	componente4 : latchD PORT MAP(x(0), Clk, Clear, s(4));
	--O Componente a seguir n�o precisa ser entrege e n�o ser� avaliado
	--Latch SR Chaveado (implementado por NOR's) com Clear Ass�ncrono
	componente5 : latchSR  PORT MAP(x(1), x(2),Clk, Clear, s(5));
END Behavior ;