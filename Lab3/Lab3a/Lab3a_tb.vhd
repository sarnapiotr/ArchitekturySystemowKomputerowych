library ieee;
use ieee.std_logic_1164.all;

entity Lab3a_tb is
end Lab3a_tb;

architecture Simulation of Lab3a_tb is
	signal i_tb : bit_vector(3 downto 0);
	signal o_tb : std_logic_vector(6 downto 0);
	
begin
	uut: entity work.Lab3a port map(
		i => i_tb,
		o => o_tb);
	
	process
	begin
		i_tb <= "0000";
		wait for 50 ns;
		i_tb <= "1111";
		wait for 50 ns;
		wait;
	end process;
end Simulation;