entity teste is
	port(
		a, b : in bit;
		y : out bit
		); 
end entity;
	
architecture ifsc_v1 of teste is 
begin

	y <= (not a and b) or (a and not b);

end architecture;

--architecture ifsc_v2 of teste is 
--begin 
--
--	y <= a xor b;
--
--end architecture;

architecture ifsc_v3 of teste is 
	signal s1, 
s2 : bit;
begin

	y <= s1 or s2;
	s1 <= (not a and b);
	s2 <= (a and not b);

end architecture;