library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab6a is
port(
	clk, reset : in std_logic;
	output : out std_logic_vector(7 downto 0);
	direction : in std_logic
);
end Lab6a;

architecture rtl of Lab6a is
begin
	process(clk, reset)
		variable counter : unsigned(7 downto 0) := "00000000";
	begin
		if reset = '1' then
			if direction = '0' then
				counter := "00000000";
			else
				counter := "11111111";
			end if;
		elsif rising_edge(clk) then
			if direction = '0' then     
				if counter < 255 then
					counter := counter + 1;
				end if;
			else                        
				if counter > 0 then
					counter := counter - 1;
				end if;
			end if;
		end if;
		
		output <= std_logic_vector(counter);
	end process;
end rtl;
