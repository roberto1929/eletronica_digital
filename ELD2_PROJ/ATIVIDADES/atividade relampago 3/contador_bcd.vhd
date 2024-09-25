library ieee;
use ieee.numeric_std.all ;
use ieee.std_logic_1164.all;

entity contador_bcd is
    
    port (

        clock , reset  : std_logic;
        dezena_bdc , unidade_bcd  : out std_logic_vector (3 downto 0);
		  max_du_reached: out std_logic;	
		  min_du_reached: out std_logic
    );
end entity;

architecture ifsc_v1 of contador_bcd is
		signal count_dezena_bdc : integer range 0 to 9 := 0;
      signal count_unidade_bcd  : integer range  0 to 9 := 0;
begin
    process (clock,reset)
    begin
        if (reset = '1') then
            count_unidade_bcd <= 0;
            count_dezena_bdc  <= 0;
				max_du_reached <= '0';
        elsif (rising_edge(clock)) then
              if count_dezena_bdc = 2 and count_unidade_bcd = 3 then    
                 max_du_reached <= '1';
              elsif count_unidade_bcd = 9 then
                    count_unidade_bcd <= 0;
                    count_dezena_bdc <= count_dezena_bdc + 1;
              else
						count_unidade_bcd <= count_unidade_bcd + 1;
              end if ;
        end if;
    end process;
	 
	 dezena_bdc <= std_logic_vector(to_unsigned(count_dezena_bdc,4));
    unidade_bcd    <= std_logic_vector(to_unsigned(count_unidade_bcd,4));
        
end architecture;

architecture ifsc_v2 of contador_bcd is
signal dezena_bcd : std_logic_vector(3 downto 0);
    signal dezena_bcd_out : std_logic_vector(3 downto 0);
    signal unidade_bcd_out : std_logic_vector(3 downto 0);
begin
    process (clock, reset)
        variable max_dezena_bcd : std_logic_vector(3 downto 0) := "0010"; -- Representa 2 em BCD
        variable max_unidade_bcd : std_logic_vector(3 downto 0) := "0011"; -- Representa 3 em BCD
        variable count_dezena_bcd : std_logic_vector(3 downto 0);
        variable count_unidade_bcd : std_logic_vector(3 downto 0);
    begin
        if (reset = '1') then
            count_dezena_bcd := "0000";
            count_unidade_bcd := "0000";
        elsif (rising_edge(clock)) then
            if count_unidade_bcd = "1001" then
                count_unidade_bcd := std_logic_vector(unsigned(count_unidade_bcd) + 6);
                if count_dezena_bcd = max_dezena_bcd then
                    count_dezena_bcd := max_dezena_bcd;
                else
                    count_dezena_bcd := std_logic_vector(unsigned(count_dezena_bcd) + 1);
                end if;
            else
                if count_dezena_bcd = max_dezena_bcd and count_unidade_bcd = max_unidade_bcd then
                    count_unidade_bcd := max_unidade_bcd;
                else
                    count_unidade_bcd := std_logic_vector(unsigned(count_unidade_bcd) + 1);
                end if;
            end if;
        end if;
        dezena_bcd_out <= count_dezena_bcd;
        unidade_bcd_out <= count_unidade_bcd;
    end process;
    
    dezena_bcd <= dezena_bcd_out;
    unidade_bcd <= unidade_bcd_out;
end architecture ifsc_v2;



architecture ifsc_v3 of contador_bcd is
signal dezena_bcd : std_logic_vector(3 downto 0);
    signal count_dezena_bcd: integer range 0 to 9 := 5; 
    signal count_unidade_bcd: integer range 0 to 9 := 9; 
begin
    process (clock, reset)
    begin
        if reset = '1' then
            count_dezena_bcd <= 5; 
            count_unidade_bcd <= 9; 
            min_du_reached <= '0';
        elsif rising_edge(clock) then
            if count_dezena_bcd = 0 and count_unidade_bcd = 0 then 
                min_du_reached <= '1'; 
            elsif count_unidade_bcd = 0 then
                count_unidade_bcd <= 9;
                count_dezena_bcd <= count_dezena_bcd - 1; 
            else
                count_unidade_bcd <= count_unidade_bcd - 1; 
            end if;
        end if;
    end process;

    dezena_bcd <= std_logic_vector(to_unsigned(count_dezena_bcd, 4));
    unidade_bcd <= std_logic_vector(to_unsigned(count_unidade_bcd, 4));
end architecture ifsc_v3;


configuration cfg_ifsc of contador_bcd is
--	for ifsc_v1 end for;
--	for ifsc_v2 end for;
	for ifsc_v3 end for;
end configuration;