library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CountOnes_DownTo is
    Generic ( N : integer := 8 ); -- Número de bits
    Port ( Data : in STD_LOGIC_VECTOR (N-1 downto 0);
           Count : out STD_LOGIC_VECTOR (N-1 downto 0));
end CountOnes_DownTo;

architecture Behavioral of CountOnes_DownTo is
begin
    process(Data)
        variable one_count : integer := 0;
    begin
        one_count := 0;
        for i in 0 to N-1 loop
            if Data(i) = '1' then
                one_count := one_count + 1;
            end if;
        end loop;
        Count <= std_logic_vector(to_unsigned(one_count, N));
    end process;
end Behavioral;