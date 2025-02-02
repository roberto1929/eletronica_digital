entity bin2gray_v2 is
	port
	(
		b : in bit_vector(0 to 3);
		g : out bit_vector(0 to 3)
	);
end entity;
--Exemplo implementando o circuito diretamente com as portas lógicas
architecture ifsc_v1 of bin2gray_v2 is
begin
	g(3) <= b(3);
	g(2) <= b(2) xor b(3);
	g(1) <= b(1) xor b(2);
	g(0) <= b(0) xor b(1);
	
end architecture;