library ieee;
use ieee.std_logic_1164.all;

entity Lab3b is
port(
	A : in std_logic;
	B : in std_logic;
	Cin : in std_logic;
	S : out std_logic;
	Cout : out std_logic);
end Lab3b;

architecture Behaviour of Lab3b is
begin
	S <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and (A xor B));
end Behaviour;