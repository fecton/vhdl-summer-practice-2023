library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_dff is
end entity tb_dff;

architecture testbench of tb_dff is

    constant PERIOD : time := 100 ns;

    component dff is
        port(
            clk : in  std_logic;
            rst : in  std_logic;
            d   : in  std_logic;
            q   : out std_logic
        );
    end component dff;

    signal clk      : std_logic;
    signal d        : std_logic;
    signal q        : std_logic;
    signal rst      : std_logic;

begin

    clock_driver : process
    begin
        clk <= '0';
        wait for PERIOD / 2;
        clk <= '1';
        wait for PERIOD / 2;
    end process clock_driver;

    dut : component dff
        port map(
            clk => clk,
            rst => rst,
            d   => d,
            q   => q
        );

    stimulus : process
    begin
        rst <= '1';
        d   <= '1';
        wait for 2 * PERIOD;
        assert q <= '0' report "test_reset_failed" severity error;

        rst <= '0';
        d   <= '1';
        wait for 2 * PERIOD;
        assert q <= '1' report "test_load_data_failed" severity error;

        assert false report "end of test" severity note;
        --  Wait forever; this will finish the simulation.
        wait;
    end process stimulus;

end architecture testbench;
