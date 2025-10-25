library ieee;
use ieee.std_logic_1164.all;

entity Lab2a is
port ( x1, x2, x3, x4: in std_logic;
		f : out std_logic);
end Lab2a;

architecture LogicFunction of Lab2a is
begin
	f <= (((x1 nor x2) xor (x3 and x4)) or x4);
end LogicFunction;