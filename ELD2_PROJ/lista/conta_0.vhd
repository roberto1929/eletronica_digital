library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conta_0 is
    Generic ( Nbits : integer := 4;
                    M: integer := 10); -- Número de bits
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (Nbits-1 downto 0));
end entity;

architecture ifsc_v1 of conta_0 is

    signal count : unsigned(Nbits-1 downto 0) := (others => '1'); -- 
--Sinal do contador como unsigned, inicializado com o valor máximo
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            count <= (others => '1'); -- Inicializando com o valor máximo
        elsif rising_edge(CLK) then
          if count = 0 then 
                count <= to_unsigned(M-1, Nbits);
                else
            count <= count - 1;
            end if;
          end if;
    end process;

    Q <= std_logic_vector(count); -- Convertendo unsigned para std_logic_vector
end architecture;