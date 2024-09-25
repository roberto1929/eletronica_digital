library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_basico is
	generic(N: integer := 4;
				M: integer := 10);
	port(
	clk: in std_logic;
	reset: in std_logic;
	q: out std_logic_vector(N - 1 downto 0);
	fire: out std_logic
	);
end entity;

architecture ifsc_v1 of contador_basico is
	signal count: unsigned(N - 1 downto 0);
	signal fire_signal: std_logic := '1';
begin
	process(clk, reset)
	begin
		if reset = '1' then
			count <= (others => '0');
			fire_signal <= '0';
		elsif rising_edge(clk) then
		if count = to_unsigned(M - 1, N) then
				fire_signal <= '1';
				count <= (others => '0');
				else 
				fire_signal <= '0';
				count <= count + 1;
				end if;
		end if;
	end process;
	
	q <= std_logic_vector(count);
	fire <= fire_signal;
end architecture;