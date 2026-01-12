library ieee;
use ieee.std_logic_1164.all;

entity Lab2a is
port(
	A, B, C, D : in std_logic;
	Y : out std_logic
);
end Lab2a;

architecture rtl of Lab2a is
begin
	Y <= (((A nor B) xor (C and D)) xor D);
end rtl;