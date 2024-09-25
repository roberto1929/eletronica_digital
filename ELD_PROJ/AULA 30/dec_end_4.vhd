entity dec_end_4 is
	port (
	A: in bit_vector(1 downto 0);
	x: in bit;
	y: out bit_vector (3 downto 0)
	);
end entity;

architecture ifsc_v1 of dec_end_4 is

begin
 with a select
	cs <= "0001" when "00",
			"0010" when "01",
			"0100" when "10",
			"1000" when others;
end architecture;

