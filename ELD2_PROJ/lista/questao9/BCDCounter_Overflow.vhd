library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCDCounter_Overflow is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           U : out STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0));
end BCDCounter_Overflow;

architecture Behavioral of BCDCounter_Overflow is
    signal units : unsigned(3 downto 0) := (others => '0');
    signal tens : unsigned(3 downto 0) := (others => '0');
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            units <= (others => '0');
            tens <= (others => '0');
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if units = 9 then
                    units <= (others => '0');
                    if tens = 9 then
                        tens <= (others => '0');
                    else
                        tens <= tens + 1;
                    end if;
                else
                    units <= units + 1;
                end if;
            end if;
        end if;
    end process;

    U <= std_logic_vector(units);
    D <= std_logic_vector(tens);
end Behavioral;