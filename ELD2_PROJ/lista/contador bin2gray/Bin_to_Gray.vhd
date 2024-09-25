library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Bin_to_Gray is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           BIN : in STD_LOGIC_VECTOR(3 downto 0); -- Entrada binária de 4 bits
           GRAY : out STD_LOGIC_VECTOR(3 downto 0) -- Saída Gray de 4 bits
         );
end Bin_to_Gray;

architecture Behavioral of Bin_to_Gray is
    signal bin_reg : STD_LOGIC_VECTOR(3 downto 0);
    signal gray_reg : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            bin_reg <= (others => '0');
            gray_reg <= (others => '0');
        elsif rising_edge(CLK) then
            bin_reg <= BIN;
            gray_reg(3) <= bin_reg(3);
            gray_reg(2) <= bin_reg(3) xor bin_reg(2);
            gray_reg(1) <= bin_reg(2) xor bin_reg(1);
            gray_reg(0) <= bin_reg(1) xor bin_reg(0);
        end if;
    end process;

    GRAY <= gray_reg;
end Behavioral;