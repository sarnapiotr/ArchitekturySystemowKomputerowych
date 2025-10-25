library ieee;
use ieee.std_logic_1164.all;

entity Lab1a is
    port(x1, x2 : in std_logic;
            f : out std_logic);
end Lab1a;

architecture LogicFunction of Lab1a is
begin
    f <= (x1 and not x2) or (not x1 and x2);
end LogicFunction;