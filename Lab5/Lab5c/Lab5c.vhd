library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab5c is
port(
	clk : in std_logic;
	hex_o : out std_logic_vector(6 downto 0)
);
end Lab5c;

architecture rtl of Lab5c is
begin
	process(clk)
		variable counter_clk : integer := 0;
		variable digit : integer := 0;
	begin
		if rising_edge(clk) then
			if counter_clk >= 50000000 then
				if digit = 9 then
					digit := 0;
				else
					digit := digit + 1;
				end if;
				
				counter_clk := 0;
			else
				counter_clk := counter_clk + 1;
			end if;
				
			case digit is
				when 0 => hex_o <= "1000000";
				when 1 => hex_o <= "1111001";
				when 2 => hex_o <= "0100100";
				when 3 => hex_o <= "0110000";
				when 4 => hex_o <= "0011001";
				when 5 => hex_o <= "0010010";
				when 6 => hex_o <= "0000010";
				when 7 => hex_o <= "1111000";
				when 8 => hex_o <= "0000000";
				when 9 => hex_o <= "0011000";
				when others => hex_o <= "XXXXXXX";
			end case;
		end if;
	end process;
end rtl;