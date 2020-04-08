package constants is
  
  -- refresh_hz = clk_hz / (2 ** digit_sel_cnt_bits)
  constant digit_sel_cnt_bits : integer := 19; -- 190 Hz @ 100 Mhz

  -- Count frequency = clk_hz / value_clk_counter_max
  constant value_clk_counter_max : integer := 20e6; -- 5 times / second @ 100 Mhz

end package;