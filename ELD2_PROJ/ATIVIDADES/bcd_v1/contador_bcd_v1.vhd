library ieee;
use ieee.numeric_std.all ;
use ieee.std_logic_1164.all;

entity contador_bcd_v1 is
    
    port (

        clock , reset  : std_logic;
        dezena_bdc , unidade_bcd  : out std_logic_vector (3 downto 0);
		  max_du_reached: out std_logic	
    );
end entity;

architecture ifsc_v1 of contador_bcd_v1 is
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