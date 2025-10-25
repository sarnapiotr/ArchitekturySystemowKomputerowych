library ieee;
use ieee.std_logic_1164.all;

entity Lab2c is
port(
	i0, i1, i2, i3, i4, i5 : in bit;
	s : in std_logic_vector(2 downto 0);
	o : out bit);
end Lab2c;

architecture LogicFunction of Lab2c is
begin
	o <= i0 when s="000" else
	i1 when s="001" else
	i2 when s="010" else
	i3 when s="011" else
	i4 when s="100" else
	i5 when s="101";
end LogicFunction;