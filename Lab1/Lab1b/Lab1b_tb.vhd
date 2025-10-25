library ieee;
use ieee.std_logic_1164.all;

entity Lab1b_tb is
end Lab1b_tb;

architecture Simulation of Lab1b_tb is
	signal x1_tb : std_logic;
	signal x2_tb : std_logic;
	signal f_tb : std_logic;
	
begin
	uut: entity work.Lab1b port map (
		x1 => x1_tb,
		x2 => x2_tb,
		f => f_tb);
		
		process
		begin
			x1_tb <= '0';
			x2_tb <= '0';
			wait for 50 ns;
			x1_tb <= '1';
			x2_tb <= '0';
			wait for 50 ns;
			x1_tb <= '0';
			x2_tb <= '1';
			wait for 50 ns;
			x1_tb <= '1';
			x2_tb <= '1';
			wait for 50 ns;
			wait;
	end process;
end Simulation;