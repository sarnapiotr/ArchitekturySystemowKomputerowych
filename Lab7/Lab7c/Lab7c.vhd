library ieee;
use ieee.std_logic_1164.all;

entity lab7c is
port(
	clk, reset : in std_logic;
	input : in std_logic;
	output : out std_logic;
	state_change: out std_logic_vector (8 downto 0)
);
end lab7c;

architecture rtl of lab7c IS
	type state_type is (a0, b0, c0, d0, f0, g0, h0, i0, j1);
	signal state : state_type;
begin

	process(clk, reset)
	begin
		if reset = '1' then
			state <= a0;
		elsif rising_edge(clk) then
			case state is
				when a0 =>
					state_change <= "100000000";
					if input = '1' then
						state <= f0;
					else
						state <= b0;
					end if;

				when b0 =>
					state_change <= "010000000";
					if input = '1' then
						state <= f0;
					else
						state <= c0;
					end if;

				when c0 =>
					state_change <= "001000000";
					if input = '1' then
						state <= f0;
					else
						state <= d0;
					end if;

				when d0 =>
					state_change <= "000100000";
					if input = '1' then
						state <= f0;
					else
						state <= d0;
					end if;

				when f0 =>
					state_change <= "000010000";
					if input = '1' then
						state <= g0;
					else
						state <= b0;
					end if;

				when g0 =>
					state_change <= "000001000";
					if input = '1' then
						state <= h0;
					else
						state <= b0;
					end if;

				when h0 =>
					state_change <= "000000100";
					if input = '1' then
						state <= i0;
					else
						state <= b0;
					end if;

				when i0 =>
					state_change <= "000000010";
					if input = '1' then
						state <= j1;
					else
						state <= b0;
					end if;

				when j1 =>
					state_change <= "000000001";
					if input = '1' then
						state <= j1;
					else
						state <= b0;
					end if;

			end case;
		end if;
	end process;

	process(state)
	begin
		case state is
			when a0 => output <= '0';
			when b0 => output <= '0';
			when c0 => output <= '0';
			when d0 => output <= '0';
			when f0 => output <= '0';
			when g0 => output <= '0';
			when h0 => output <= '0';
			when i0 => output <= '0';
			when j1 => output <= '1';
		end case;
	end process;
END rtl;