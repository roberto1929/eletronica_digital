entity demux_4_enable is
	port (
	A: in bit_vector(1 downto 0);
	ena: in bit;
	x: in bit;
	y: out bit_vector (3 downto 0));
end entity;

architecture ifsc_v1 of demux_4_enable is

begin
	y(0) <= x when (A = "00" and ena = '1')else '0';
	y(1) <= x when (A = "01" and ena = '1')else '0';
	y(2) <= x when (A = "10" and ena = '1')else '0';
	y(3) <= x when (A = "11" and ena = '1')else '0';
end architecture;