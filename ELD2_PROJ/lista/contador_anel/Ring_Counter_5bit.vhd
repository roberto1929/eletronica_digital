library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ring_Counter_5bit is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        ENABLE : in STD_LOGIC;
        RING_COUNT_1 : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Ring_Counter_5bit;

architecture Behavioral of Ring_Counter_5bit is
    signal ring_count : STD_LOGIC_VECTOR(4 downto 0) := "00001";
begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            ring_count <= "00001"; -- Inicializa com o bit 1 na posição 0
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                -- Desloca o bit 1 para a esquerda e faz o wrap-around
                ring_count <= ring_count(3 downto 0) & ring_count(4);
            end if;
        end if;
    end process;

    RING_COUNT_1 <= ring_count;
end Behavioral;