entity teste is
 port( 
	a,b,c : in bit;
	x : out bit
 ); end entity;
 
 architecture ifsc_v1 of teste is 
 begin 
 
 x <= (a and b) or (a and c) or (b and c);
 
 end architecture;