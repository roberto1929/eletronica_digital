library std;
use std.standard.all;

entity nand_gate is
	port (a, b: in bit; x: out bit);
end entity;

architecture nome_arch of nand_gate is
begin
	x <= a nand b;
end architecture;