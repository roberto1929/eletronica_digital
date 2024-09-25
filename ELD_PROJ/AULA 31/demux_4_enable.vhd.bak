entity demux_4_v1 is
	port (
	A: in bit_vector(1 downto 0);
	x: in bit;
	y: out bit_vector (3 downto 0));
end entity;

--architecture ifsc_v1 of dec_end_4 is
--
--begin	
-- with a select
--	cs <= "0001" when "00",
--			"0010" when "01",
--			"0100" when "10",
--			"1000" when others;
--end architecture;

architecture ifsc_v1 of demux_4_v1 is

begin
	y(0) <= x when A = "00" else '0';
	y(1) <= x when A = "01" else '0';
	y(2) <= x when A = "10" else '0';
	y(3) <= x when A = "11" else '0';
end architecture;