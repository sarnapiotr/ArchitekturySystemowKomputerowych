library ieee;
use ieee.std_logic_1164.all;

entity Lab7a is
port(
	clk, reset : in std_logic;
	input : in std_logic;
	output : out std_logic_vector(1 downto 0)
);
end Lab7a;

architecture rtl of Lab7a is
	type state_type is (s0, s1, s2);
	signal state : state_type;
begin
	process(clk, reset)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state <= s0;
			else
				case state is
					when s0 =>
						if input = '1' then
							state <= s1;
						else
							state <= s0;
						end if;
					
					when s1 =>
						if input = '1' then
							state <= s2;
						else
							state <= s1;
						end if;
						
					when s2 =>
						if input = '1' then
							state <= s0;
						else
							state <= s2;
						end if;
				end case;
			end if;
		end if;
	end process;
	
	process (state)
	begin
		case state is
			when s0 => output <= "00";
				 
			when s1 => output <= "01";
			
			when s2 => output <= "10";
		end case;
	end process;
end rtl;