library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_BCD is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           OPA : out STD_LOGIC;
           BCD_DU : out STD_LOGIC_VECTOR (3 downto 0);
           BCD_C : out STD_LOGIC_VECTOR (3 downto 0));
end entity;

architecture ifsc_v1 of contador_BCD is
    signal du, de : integer range 0 to 9 := 0;
    constant max_du : integer := 59; -- Definindo MAX_DU como constante
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            du <= 0;
            de <= 0;
            OPA <= '0';
        elsif rising_edge(CLK) then
            if du = max_du(3 downto 2) and de = max_du(1 downto 0) then
                OPA <= '1'; -- Ativa saída adicional OPA
            else
                OPA <= '0';
                du <= du + 1;
                if du = 10 then
                    du <= 0;
                    de <= de + 1;
                end if;
            end if;
        end if;
    end process;
    
    BCD_DU <= std_logic_vector(to_unsigned(du, BCD_DU'length));
    BCD_C <= std_logic_vector(to_unsigned(de, BCD_C'length));
end architecture;

architecture ifsc_v2 of contador_BCD is
    signal valor : integer range 0 to 59 := 0;
    signal max_du : integer range 0 to 59 := 59;
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            valor <= 0;
            OPA <= '0';
        elsif rising_edge(CLK) then
            if valor = max_du then
                OPA <= '1'; -- Ativa saída adicional OPA
            else
                OPA <= '0';
                valor <= valor + 1;
                if valor(3 downto 0) = "1001" then -- Se bits da Unidade são "1001" (9)
                    valor <= valor + 6; -- Incrementa 6 para ir para "1010" (10)
                end if;
            end if;
        end if;
    end process;
    
    BCD_DU <= std_logic_vector(to_unsigned(valor(3 downto 0), BCD_DU'length));
    BCD_C <= std_logic_vector(to_unsigned(valor(5 downto 4), BCD_C'length));
end architecture;

architecture ifsc_v3 of contador_BCD is
    signal du, de : integer range 0 to 9 := 9;
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            du <= 9;
            de <= 5;
            OPA <= '0';
        elsif rising_edge(CLK) then
            if du = 0 and de = 0 then
                OPA <= '1'; -- Ativa saída adicional OPA
            else
                OPA <= '0';
                du <= du - 1;
                if du = -1 then
                    du <= 9;
                    de <= de - 1;
                end if;
            end if;
        end if;
    end process;
    
    BCD_DU <= std_logic_vector(to_unsigned(du, BCD_DU'length));
    BCD_C <= std_logic_vector(to_unsigned(de, BCD_C'length));
end architecture;

