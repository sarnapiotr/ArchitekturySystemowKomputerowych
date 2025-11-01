library ieee;
use ieee.std_logic_1164.all;

entity Lab4b_tb is
end Lab4b_tb;

architecture Simulation of Lab4b_tb is
	signal operand_a_i_tb : std_logic_vector(2 downto 0);
	signal operand_b_i_tb : std_logic_vector(2 downto 0);
	signal opcode_i_tb : std_logic_vector(2 downto 0);
	signal opcode_o_tb : std_logic_vector(2 downto 0);
	signal hex_o_tb : std_logic_vector(6 downto 0);
	signal negative_o_tb : std_logic;
	signal overflow_o_tb : std_logic;
	
begin
	uut: entity work.Lab4b port map(
		operand_a_i => operand_a_i_tb,
		operand_b_i => operand_b_i_tb,
		opcode_i => opcode_i_tb,
		opcode_o => opcode_o_tb,
		hex_o => hex_o_tb,
		negative_o => negative_o_tb,
		overflow_o => overflow_o_tb);
		
		process
		begin
			operand_a_i_tb <= "100";
			operand_b_i_tb <= "100";
			opcode_i_tb <= "000";
			wait for 50 ns;
			opcode_i_tb <= "001";
			wait for 50 ns;
			opcode_i_tb <= "010";
			wait for 50 ns;
			opcode_i_tb <= "011";
			wait for 50 ns;
			opcode_i_tb <= "100";
			wait for 50 ns;
			opcode_i_tb <= "101";
			wait for 50 ns;
			-- 0 division
			operand_b_i_tb <= "000";
			opcode_i_tb <= "011";
			wait for 50 ns;
			-- 7 * 7 multiplication
			operand_a_i_tb <= "111";
			operand_b_i_tb <= "111";
			opcode_i_tb <= "010";
			wait for 50 ns;
			wait;
		end process;
end Simulation;
			