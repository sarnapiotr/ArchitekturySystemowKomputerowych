library ieee;
use ieee.std_logic_1164.all;

entity Lab3b_tb is
end Lab3b_tb;

architecture Simulation of Lab3b_tb is
		signal A0_tb, A1_tb, A2_tb, A3_tb, A4_tb,
		B0_tb, B1_tb, B2_tb, B3_tb, B4_tb, S0_tb,
		S1_tb, S2_tb, S3_tb, S4_tb : std_logic;

begin
		uut: entity work.Lab3b_5bit port map(
			A0 => A0_tb, A1 => A1_tb, A2 => A2_tb, A3 => A3_tb, A4 => A4_tb,
			B0 => B0_tb, B1 => B1_tb, B2 => B2_tb, B3 => B3_tb, B4 => B4_tb,
			S0 => S0_tb, S1 => S1_tb, S2 => S2_tb, S3 => S3_tb, S4 => S4_tb);
		process
		begin
			-- A = 00001 (1), B = 00001 (1), S = 00010 (2)
			A0_tb <= '1'; A1_tb <= '0'; A2_tb <= '0'; A3_tb <= '0'; A4_tb <= '0';
			B0_tb <= '1'; B1_tb <= '0'; B2_tb <= '0'; B3_tb <= '0'; B4_tb <= '0';
			wait for 50 ns;
			-- A = 00101 (5), B = 00011 (3), S = 01000 (8)
			A0_tb <= '1'; A1_tb <= '0'; A2_tb <= '1'; A3_tb <= '0'; A4_tb <= '0';
			B0_tb <= '1'; B1_tb <= '1'; B2_tb <= '0'; B3_tb <= '0'; B4_tb <= '0';
			wait for 50 ns;
			-- A = 11110 (30), B = 00001 (1), S = 11111 (31)
			A0_tb <= '1'; A1_tb <= '1'; A2_tb <= '1'; A3_tb <= '1'; A4_tb <= '0';
			B0_tb <= '0'; B1_tb <= '0'; B2_tb <= '0'; B3_tb <= '0'; B4_tb <= '1';
			wait for 50 ns;
			wait;
		end process;
end Simulation;