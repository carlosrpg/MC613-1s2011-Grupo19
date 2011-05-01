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
	--Os Componentes são:
	
	--FlipFlop D com Clear Assíncrono
	componente0 : ffd PORT MAP(x(0), Clk, Clear, s(0));
	--FlipFlop SR com Clear Assíncrono
	componente1 : ffSR PORT MAP(x(1), x(2),Clk, Clear, s(1));
	--FlipFlop JK com Clear Síncrono
	componente2	: ffJK_sync PORT MAP(x(1), x(2),Clk, Clear, s(2));
	--FlipFlop T com Clear Síncrono
	componente3	: fft_sync PORT MAP(x(3), Clk, Clear, s(3));
	--Latch D com Clear Assíncrono
	componente4 : latchD PORT MAP(x(0), Clk, Clear, s(4));
	--O Componente a seguir não precisa ser entrege e não será avaliado
	--Latch SR Chaveado (implementado por NOR's) com Clear Assíncrono
	componente5 : latchSR  PORT MAP(x(1), x(2),Clk, Clear, s(5));
END Behavior ;