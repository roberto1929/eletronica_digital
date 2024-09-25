entity bin2gray_v1 is
	port
	(
		b0, b1, b2, b3  : in bit;
		g0, g1, g2, g3  : out bit
	);
end entity;
--Exemplo implementando o circuito diretamente com as portas lógicas
architecture ifsc_v1 of bin2gray_v1 is
begin
	g3 <= b3;
	g2 <= b3 xor b2;
	g1 <= b2 xor b1;
	g0 <= b1 xor b0;
	
end architecture;