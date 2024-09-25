library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Arbitrary_Seq_Counter is
    Port (
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        ENABLE : in STD_LOGIC;
        COUNT : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Arbitrary_Seq_Counter;

architecture Behavioral of Arbitrary_Seq_Counter is
    type seq_array is array(0 to 31) of STD_LOGIC_VECTOR(4 downto 0);
    constant SEQ : seq_array := (
        "00000", "00001", "00011", "00010", "00111", "00110", "00100", "00101",
        "01111", "01110", "01100", "01101", "01000", "01001", "01011", "01010",
        "10111", "10110", "10100", "10101", "10000", "10001", "10011", "10010",
        "11111", "11110", "11100", "11101", "11000", "11001", "11011", "11010"
    );
    signal index : integer range 0 to 31 := 0;
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            index <= 0;
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if index = 31 then
                    index <= 0;
                else
                    index <= index + 1;
                end if;
            end if;
        end if;
    end process;

    COUNT <= SEQ(index);
end Behavioral;