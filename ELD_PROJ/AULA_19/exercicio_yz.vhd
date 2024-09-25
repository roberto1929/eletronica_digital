library std;
use std.standard.all;

entity exercicio_yz is
	port (a, b, c: in bit; z,y: out bit);
end entity;

architecture nome_arch of exercicio_yz is
begin
	z <= ((not a) and b and c) or (not c);
	y <= (a and b) or (a and (not c));  
end architecture;