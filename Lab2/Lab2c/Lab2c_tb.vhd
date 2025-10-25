library ieee;
use ieee.std_logic_1164.all;

entity Lab2c_tb is
end Lab2c_tb;

architecture Simulation of Lab2c_tb is
	signal i0_tb, i1_tb, i2_tb, i3_tb, i4_tb, i5_tb : bit;
	signal s_tb : std_logic_vector(2 downto 0);
	signal o_tb : bit;
	
begin
	uut: entity work.Lab2c port map (
		i0 => i0_tb,
		i1 => i1_tb,
		i2 => i2_tb,
		i3 => i3_tb,
		i4 => i4_tb,
		i5 => i5_tb,
		s => s_tb,
		o => o_tb);
		
		process
		begin
			i0_tb <= '0';
			i1_tb <= '1';
			i2_tb <= '0';
			i3_tb <= '1';
			i4_tb <= '0';
			i5_tb <= '1';
			
			s_tb <= "000"; wait for 50 ns;
			s_tb <= "001"; wait for 50 ns;
			s_tb <= "010"; wait for 50 ns;
			s_tb <= "011"; wait for 50 ns;
			s_tb <= "100"; wait for 50 ns;
			s_tb <= "101"; wait for 50 ns;
        wait;
    end process;
end Simulation;