library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab5b is
port(
	clk, reset       : in std_logic;
	num_input        : in std_logic_vector(7 downto 0);
   AB               : in std_logic;
   RW               : in std_logic;
   num_output_units : out std_logic_vector(6 downto 0);
   num_output_tens  : out std_logic_vector(6 downto 0)
);
end Lab5b;

architecture rtl of Lab5b is
begin
	process(clk, reset)
		variable A, B : unsigned(7 downto 0) := "00000000";
		variable display_val  : unsigned(7 downto 0);
		variable unit_digit, tens_digit : integer;
	begin
		if reset = '1' then
			A := "00000000";
			B := "00000000";
		elsif rising_edge(clk) then
			if RW = '1' then
				if AB = '0' then
					A := unsigned(num_input);
				else
					B := unsigned(num_input);
				end if;
			end if;
		end if;
		
		if AB = '0' then
			display_val := A;
		else
			display_val := B;
		end if;
		
		unit_digit := to_integer(display_val) mod 10;
		tens_digit := (to_integer(display_val) / 10) mod 10;
		
		case unit_digit mod 10 is
			when 0 => num_output_units <= "1000000";
			when 1 => num_output_units <= "1111001";
			when 2 => num_output_units <= "0100100";
			when 3 => num_output_units <= "0110000";
			when 4 => num_output_units <= "0011001";
			when 5 => num_output_units <= "0010010";
			when 6 => num_output_units <= "0000010";
			when 7 => num_output_units <= "1111000";
			when 8 => num_output_units <= "0000000";
			when 9 => num_output_units <= "0011000";
			when others => num_output_units <= "1111111";
		end case;
		
		case tens_digit is
			when 0 => num_output_tens <= "1000000";
			when 1 => num_output_tens <= "1111001";
			when 2 => num_output_tens <= "0100100";
			when 3 => num_output_tens <= "0110000";
			when 4 => num_output_tens <= "0011001";
			when 5 => num_output_tens <= "0010010";
			when 6 => num_output_tens <= "0000010";
			when 7 => num_output_tens <= "1111000";
			when 8 => num_output_tens <= "0000000";
			when 9 => num_output_tens <= "0011000";
			when others => num_output_tens <= "1111111";
		end case;
	end process;
end rtl;