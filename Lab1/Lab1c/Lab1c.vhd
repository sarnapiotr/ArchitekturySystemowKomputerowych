library ieee;

use ieee.std_logic_1164.all;

entity Lab1c is
port(x1, x2, x3 : in std_logic;
	  f : out std_logic);
end Lab1c;

architecture LogicFunction of Lab1c is
begin
	f <= (x1 and (not x2) and (not x3)) or ((not x1) and x2 and (not x3)) or ((not x1) and (not x2) and x3);
end LogicFunction;