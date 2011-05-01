Library IEEE;
	use IEEE.std_logic_1164.all;

Entity lab1 IS 
	Port (a, b, c, d, e : IN std_logic;
	f : OUT std_logic); 
End lab1;

Architecture estrutural OF lab1 IS 
	signal p, q, r, s, t : std_logic;

Begin 
	f <= p or q or r or s or t; 
	p <= not(a) and not(b) and not(c) and not(e);
	q <= c and not(d) and e;
	r <= b and c and e;
	s <= b and not(c) and not(d) and not(e); 
	t <= not(b) and not(c) and d and not(e); 
End estrutural;