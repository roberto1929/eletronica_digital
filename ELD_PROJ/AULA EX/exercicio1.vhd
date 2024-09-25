entity exercicio1 is
port(	
	a: in bit;
	b: in bit;
	c: in bit;
	s: out bit
	
	);
end entity;

architecture ifsc_v1 of exercicio1 is
 
begin
 
 s <= ((not a) and b and c) or (a and (not b) and (not c)) or (a and (not b) and c);
end architecture;

 architecture ifsc_v2 of exercicio1 is
 
begin
 s <= 
	'1' when a = '0' and b = '1' and c = '1' else
	'1' when a = '1' and b = '0' and c = '0' else
	'1' when a = '1' and b = '0' and c = '1' else
	'0';
end architecture;

architecture ifsc_v3 of exercicio1 is
signal abc: bit_vector(2 downto 0);
begin
abc <= a & b & c;

with abc select
	s <= 
		'1' when  "011",
		'1' when  "101",
		'1' when  "100",
		'0' when others;

end architecture;
