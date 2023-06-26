library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dff is
    port(
        clk : in  std_logic;
        rst : in  std_logic;
        d   : in  std_logic;
        q   : out std_logic
    );
end entity dff;

architecture RTL of dff is

begin

    dff_process : process(clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then
                q <= '0';
            else
                q <= d;
            end if;
        end if;
    end process dff_process;

end architecture RTL;
