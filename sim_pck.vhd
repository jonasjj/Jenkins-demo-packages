use std.textio.all;
use std.env.finish;

package sim is

  -- Using slow clock to speed up simulation
  constant sim_clk_hz : integer := 100;
  constant sim_clk_period : time := 1 sec / sim_clk_hz;

  -- Print message with test OK and call finish
  procedure print_ok_and_finish;

end package;

package body sim is

  procedure print_ok_and_finish is
    variable str : line;
  begin
    write(str, string'("Test: OK"));
    writeline(output, str);
    finish;
  end procedure;

end package body;