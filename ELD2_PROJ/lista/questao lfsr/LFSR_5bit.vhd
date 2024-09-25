library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LFSR_5bit is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        ENABLE : in STD_LOGIC;
        LFSR_OUT : out STD_LOGIC_VECTOR(4 downto 0)
    );
end LFSR_5bit;

architecture Behavioral of LFSR_5bit is
    signal lfsr_reg : STD_LOGIC_VECTOR(4 downto 0) := "00001"; -- Inicializa com um valor não nulo
    signal feedback : STD_LOGIC;
begin

    -- Calcula o feedback baseado no polinômio x^5 + x^2 + 1
    feedback <= lfsr_reg(4) xor lfsr_reg(1);

    process(CLK, RESET)
    begin
        if RESET = '1' then
            lfsr_reg <= "00001"; -- Inicializa o LFSR com um valor não nulo
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                -- Desloca o registro e aplica o feedback
                lfsr_reg <= feedback & lfsr_reg(4 downto 1);
            end if;
        end if;
    end process;

    LFSR_OUT <= lfsr_reg;
end Behavioral;