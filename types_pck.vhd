package types is

    -- Binary-coded decimal representation of value
    subtype digit_type is integer range 0 to 9;
    type digits_type is array (1 downto 0) of digit_type;

    subtype value_type is integer range 0 to 99;
  
end package;