library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Gray_Counter_5bit is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        ENABLE : in STD_LOGIC;
        GRAY_COUNT_1 : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Gray_Counter_5bit;

architecture Behavioral of Gray_Counter_5bit is
    signal bin_count : unsigned(4 downto 0) := (others => '0');
    signal gray_count : STD_LOGIC_VECTOR(4 downto 0);
begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            bin_count <= (others => '0');
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if bin_count = "11111" then
                    bin_count <= (others => '0');
                else
                    bin_count <= bin_count + 1;
                end if;
            end if;
        end if;
    end process;

    -- Convert bin_count to gray_count
    gray_count(4) <= bin_count(4);
    gray_count(3) <= bin_count(4) xor bin_count(3);
    gray_count(2) <= bin_count(3) xor bin_count(2);
    gray_count(1) <= bin_count(2) xor bin_count(1);
    gray_count(0) <= bin_count(1) xor bin_count(0);

    GRAY_COUNT_1 <= gray_count;
end Behavioral;