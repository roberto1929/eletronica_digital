library ieee;
use ieee.std_logic_1164.all;

entity flip_flop_d is
port( d: in std_logic;
		clk: in std_logic;
		reset_asy: in std_logic;
		reset_sy: in std_logic;
		enable: in std_logic;
		q: out std_logic;
		q_not: out std_logic);
end entity;

architecture ifsc_v1 of flip_flop_d is
begin
	process(clk, reset_asy)
		begin
		if reset_asy = '1' then
		q <= '0';
		q_not <= '1';
		elsif falling_edge(clk) then
			if reset_sy = '1' then 
				q <= '0';
				q_not <= '1';
			elsif enable = '1' then
				q<= d;
				q_not <= not d;
			end if;
		end if;
	end process;
end architecture;