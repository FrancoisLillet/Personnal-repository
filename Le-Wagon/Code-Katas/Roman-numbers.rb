def old_roman_numeral(an_integer)
  # We define a list of the symbolic values.
  key_values = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I" }
  roman_number = ""
  key_values.each do |key_value, letter|
    while an_integer >= key_value
      roman_number << letter
      an_integer -= key_value
    end
  end
  return roman_number
end

KEY_VALUES = {
  1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
  10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I",
}

def new_roman_numeral(an_integer)
  # We define a list of the symbolic values.
  roman_number = ""
  KEY_VALUES.each do |key_value, letter|
    while an_integer >= key_value
      roman_number << letter
      an_integer -= key_value
    end
  end
  return roman_number
end
