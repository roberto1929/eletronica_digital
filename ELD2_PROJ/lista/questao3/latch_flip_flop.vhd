library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch_flip_flop is
port(    d: in std_logic_vector(3 downto 0);
        clk: in std_logic;
        reset: in std_logic;
        q: out std_logic_vector(3 downto 0));
        end entity;

architecture ifsc_v1 of latch_flip_flop is
begin
        
        process(clk,reset)
        begin
            if reset = '1' then
                q <= (others => '0');
            elsif rising_edge(clk) then
                q <= d;
            end if;
        end process;
    
end architecture;