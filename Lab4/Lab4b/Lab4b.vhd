library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab4b is
port(
	operand_a_i : in std_logic_vector(2 downto 0);
	operand_b_i : in std_logic_vector(2 downto 0);
	opcode_i : in std_logic_vector(2 downto 0);
	opcode_o : out std_logic_vector(2 downto 0);
	hex_o : out std_logic_vector(6 downto 0);
	negative_o : out std_logic;
	overflow_o : out std_logic);
end Lab4b;

architecture rtl of Lab4b is
begin
	opcode_o <= opcode_i;
	
	process(operand_a_i, operand_b_i, opcode_i)
		variable operand_a_int : integer;
		variable operand_b_int : integer;
		variable result : integer;
		variable output : integer;
		variable negative_bool : boolean;
		variable overflow_bool : boolean;
	begin
		operand_a_int := to_integer(unsigned(operand_a_i));
		operand_b_int := to_integer(unsigned(operand_b_i));
		result := 0;
		negative_bool := false;
		overflow_bool := false;
		
		case opcode_i is
			when "000" => -- addition
				result := operand_a_int + operand_b_int;
			when "001" => -- subtraction
				result := operand_a_int - operand_b_int;
			when "010" => -- multiplication
				result := operand_a_int * operand_b_int;
			when "011" => -- division
				if operand_b_int = 0 then
					overflow_bool := true;
					result := 0;
				else
					result := operand_a_int / operand_b_int;
				end if;
			when "100" => -- negation
				result := -operand_a_int;
			when "101" => -- incrementation
				result := operand_a_int + 1;
			when others =>
				result := 0;
		end case;

		if result < 0 then
			negative_bool := true;
		else
			negative_bool := false;
		end if;
		
		if abs(result) <= 15 then
			output := abs(result);
		else
			output := abs(result) mod 16;
			overflow_bool := true;
		end if;
		
		case output is
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
			when 10 => hex_o <= "0001000";
			when 11 => hex_o <= "0000011";
			when 12 => hex_o <= "1000110";
			when 13 => hex_o <= "0100001";
			when 14 => hex_o <= "0000110";
			when 15 => hex_o <= "0001110";
			when others => hex_o <= "1111111";
		end case;
	  
		if overflow_bool then
			overflow_o <= '1';
		else
			overflow_o <= '0';
		end if;
	  
		if negative_bool then
			negative_o <= '0';
		else
			negative_o <= '1';
		end if;
	end process;
end rtl;