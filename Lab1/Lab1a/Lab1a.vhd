library ieee;
use ieee.std_logic_1164.all;

entity Lab1a is
port(
	A, B : in std_logic;
	Y : out std_logic
);
end Lab1a;

architecture rtl of Lab1a is
begin
	Y <= (A and not B) or (not A and B);
end rtl;