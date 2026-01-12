library ieee;
use ieee.std_logic_1164.all;

entity Lab4a is
port(
	i : in std_logic_vector(7 downto 0);
	o : out std_logic
);
end Lab4a;

architecture rtl of Lab4a is
begin
	o <= i(0) xor i(1) xor i(2) xor i(3) xor i(4) xor i(5) xor i(6) xor i(7);
end rtl;