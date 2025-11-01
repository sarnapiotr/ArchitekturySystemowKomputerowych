library ieee;
use ieee.std_logic_1164.all;

entity Lab4a_tb is
end Lab4a_tb;

architecture Simulation of Lab4a_tb is
	signal s_tb : std_logic_vector(7 downto 0);
	signal o_tb : std_logic;
	
begin
	uut: entity work.Lab4a port map(
		s => s_tb,
		o => o_tb);
		
	process
	begin
		s_tb <= "00000000";
		wait for 50 ns;
		s_tb <= "00000001";
		wait for 50 ns;
		s_tb <= "00000011";
		wait for 50 ns;
		s_tb <= "00000111";
		wait for 50 ns;
		s_tb <= "00001111";
		wait for 50 ns;
		s_tb <= "00011111";
		wait for 50 ns;
		s_tb <= "00111111";
		wait for 50 ns;
		s_tb <= "01111111";
		wait for 50 ns;
		s_tb <= "11111111";
		wait for 50 ns;
		wait;
	end process;
end Simulation;