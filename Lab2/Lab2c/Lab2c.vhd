library ieee;
use ieee.std_logic_1164.all;

entity Lab2c is
port(
	i0, i1, i2, i3, i4, i5 : in std_logic;
	s : in std_logic_vector(2 downto 0);
	o : out std_logic
);
end Lab2c;

architecture rtl of Lab2c is
begin
	with s select
		o <= i0 when "000",
			  i1 when "001",
			  i2 when "010",
			  i3 when "011",
			  i4 when "100",
			  i5 when "101",
			  '0' when others;
end rtl;