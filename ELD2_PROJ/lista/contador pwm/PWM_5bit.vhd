library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM_5bit is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        DUTY_CYCLE : in STD_LOGIC_VECTOR(4 downto 0);
        PWM_OUT : out STD_LOGIC
    );
end PWM_5bit;

architecture Behavioral of PWM_5bit is
    signal counter : unsigned(4 downto 0) := (others => '0');
begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            counter <= (others => '0');
        elsif rising_edge(CLK) then
            counter <= counter + 1;
        end if;
    end process;

    -- Geração do sinal PWM
    process(counter, DUTY_CYCLE)
    begin
        if unsigned(DUTY_CYCLE) >= counter then
            PWM_OUT <= '1';
        else
            PWM_OUT <= '0';
        end if;
    end process;

end Behavioral;