library ieee;
use ieee.std_logic_1164.all;

entity somador_carry_ripple is
	generic
	(N	: natural  :=	4);

	port
	(
		a,b : in  std_logic_vector(N-1 downto 0);
		cin : in  std_logic ;
		cout : out std_logic;
		s : out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture ifsc_v1 of somador_carry_ripple is
	signal c : std_logic_vector(N downto 0);
begin
	cout <= c(4);
	
l1:
	for i in N-1 downto 0 generate
		s(i) <= a(i) xor b(i) xor c(i);
		c(i+1) <= (a(i) and b(i)) or (a(i) and c(i)) or (c(i) and b(i));
	end generate;
	
	c(0) <= cin;
	
--	s(0) <= a(0) xor b(0) xor c(0);
--	s(1) <= a(1) xor b(1) xor c(1);
--	s(2) <= a(2) xor b(2) xor c(2);
--	s(3) <= a(3) xor b(3) xor c(3);
	

	
end architecture;
