library ieee;
use ieee.std_logic_1164.all;

entity Lab10b is
    port (
        clk         : in std_logic;
        rst         : in std_logic;                    
        enable      : in std_logic;                    
        load        : in std_logic;                  
        op          : in std_logic;                     
        dir         : in std_logic;                   
        serial_in   : in std_logic;                     
        parallel_in : in std_logic_vector(7 downto 0);
        q           : out std_logic_vector(7 downto 0)
    );
end Lab10b;

architecture behavioral of Lab10b is
    signal r_reg : std_logic_vector(7 downto 0);
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                r_reg <= (others => '0');

            elsif load = '1' then
                r_reg <= parallel_in;

            elsif enable = '1' then
                
                if op = '0' then 
                    if dir = '0' then
                        r_reg <= r_reg(6 downto 0) & serial_in;
                    else
                        r_reg <= serial_in & r_reg(7 downto 1);
                    end if;
                
                else 
                    if dir = '0' then
                        r_reg <= r_reg(6 downto 0) & r_reg(7);
                    else
                        r_reg <= r_reg(0) & r_reg(7 downto 1);
                    end if;
                end if;
            end if;
        end if;
    end process;

    q <= r_reg;

end behavioral;
