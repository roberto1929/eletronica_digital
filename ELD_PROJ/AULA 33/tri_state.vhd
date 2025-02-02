library ieee;
use ieee.std_logic_1164.all;

entity tri_state is
  generic (N: NATURAL := 8);
  port 
  (
    input      : in std_logic_vector(N-1 downto 0);
    ena        : in std_logic;
    output     : out std_logic_vector(N-1 downto 0)
  );
end entity;

architecture tri_state of tri_state is
begin

 output <= input when ena = '1' else "ZZZZZZZZ";
  
  
end architecture;