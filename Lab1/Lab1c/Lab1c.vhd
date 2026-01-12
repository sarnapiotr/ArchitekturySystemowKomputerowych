library ieee;
use ieee.std_logic_1164.all;

entity Lab1c is
port(
	A, B, C : in std_logic;
	Y : out std_logic
);
end Lab1c;

architecture rtl of Lab1c is
begin
	Y <= (A and not B and not C) or (not A and B and not C) or (not A and not B and C);
end rtl;