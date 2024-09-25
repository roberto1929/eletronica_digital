library std;
use std.standard.all;

entity ckt2 is
	port (a, b, c, d: in bit; x: out bit);
end entity;

architecture ifsc_v1 of ckt2 is
begin
	x <= (not (a and b)) or (c and not d and not b);
	
end architecture;