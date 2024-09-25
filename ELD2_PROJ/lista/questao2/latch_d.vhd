library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch_d is
port(    d: in std_logic;
        clk: in std_logic;
        reset: in std_logic;
        q: out std_logic;
        q_not: out std_logic);
end entity;

architecture ifsc_v1 of latch_d is
begin
        process(clk,reset)
        begin
            if reset = '1' then
                q <= '0';
                q_not <= not '1';
            elsif clk = '1' then
                q <= d;
                q_not <= not d;
            end if;
        end process;
end architecture;