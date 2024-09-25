entity bin2gray_v3 is
	generic(N : natural := 4);
	port
	(
		b : in bit_vector(0 to N-1);
		g : out bit_vector(0 to N-1)
	);
end entity;
--Exemplo implementando o circuito diretamente com as portas lógicas
architecture ifsc_v1 of bin2gray_v3 is
begin
l1: FOR i IN 0 to N-2 GENERATE
   g(i) <= b(i) xor b(i+1);
END GENERATE;



--	g(0) <= b(0) xor b(1);
--	g(1) <= b(1) xor b(2);
--	g(2) <= b(2) xor b(3);
--	g(3) <= b(3) xor b(4);
	g(N-1) <= b(N-1);
	
	
end architecture;