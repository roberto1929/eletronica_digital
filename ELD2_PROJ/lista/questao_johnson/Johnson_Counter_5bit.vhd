library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Johnson_Counter_5bit is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        ENABLE : in STD_LOGIC;
        JOHNSON_COUNT : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Johnson_Counter_5bit;

architecture Behavioral of Johnson_Counter_5bit is
    signal johnson_count : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal inverted : STD_LOGIC_VECTOR(4 downto 0);
begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            johnson_count <= (others => '0'); -- Inicializa com 00000
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                -- Calcula a próxima contagem
                inverted <= not johnson_count;
                johnson_count <= inverted(3 downto 0) & inverted(4);
            end if;
        end if;
    end process;

    JOHNSON_COUNT <= johnson_count;
end Behavioral;