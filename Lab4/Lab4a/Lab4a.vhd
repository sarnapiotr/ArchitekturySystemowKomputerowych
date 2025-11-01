library ieee;
use ieee.std_logic_1164.all;

entity Lab4a is
port(
	s : in std_logic_vector(7 downto 0);
	o : out std_logic);
end Lab4a;

architecture LogicFunction of Lab4a is
begin
	o <= s(0) xor s(1) xor s(2) xor s(3) xor s(4) xor s(5) xor s(6) xor s(7);
end LogicFunction;