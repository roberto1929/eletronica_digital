library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_to_SSD is
    Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0); -- Entrada BCD
           SSD : out STD_LOGIC_VECTOR (6 downto 0) -- Saída SSD (abcdefg)
         );
end BCD_to_SSD;

architecture Behavioral of BCD_to_SSD is
begin
    process(BCD)
    begin
        case BCD is
            when "0000" => SSD <= "0111111"; -- 0
            when "0001" => SSD <= "0000110"; -- 1
            when "0010" => SSD <= "1011011"; -- 2
            when "0011" => SSD <= "1001111"; -- 3
            when "0100" => SSD <= "1100110"; -- 4
            when "0101" => SSD <= "1101101"; -- 5
            when "0110" => SSD <= "1111101"; -- 6
            when "0111" => SSD <= "0000111"; -- 7
            when "1000" => SSD <= "1111111"; -- 8
            when "1001" => SSD <= "1101111"; -- 9
            when others => SSD <= "0000000"; -- Default (All segments off)
        end case;
    end process;
end Behavioral;