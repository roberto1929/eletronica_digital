entity exercicio2 is 
port (
	a: in bit;
	b: in bit;
	c: in bit;
	oper: in bit;
	s: out bit
);
end entity;

architecture ifsc_v1 of exercicio2 is
 signal abc : bit_vector(2 downto 0);
begin
 abc <= a & b & c;
 
 s <= 
	(not a) when abc = "000" else
	(not b) when abc = "001" else
	(a and b) when abc = "010" else
	(a or b) when abc = "011" else
	(a nor c) when abc = "100" else
	(a xor b xor c) when abc = "101" else
	(b nand c) when abc = "110" else
	((not c) and c);
	
end architecture;