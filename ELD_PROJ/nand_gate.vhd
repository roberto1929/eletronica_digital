library std;
use std.standard.all;

entity nand_gate is
	port (a, b, c, d: in bit; x: out bit);
end entity;

architecture nome_arch of nand_gate is
begin
	x <= not(a and b) or (c and (not d) and (not b));  
end architecture;
