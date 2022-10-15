ROMAN_FIGURES = {
  "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50,
  "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1, nil => 0
}

def roman_to_integer(roman_string)
  # TODO: translate roman string to integer
  decimal_number = 0
  # We create a secondary array that will keep the symbols consistently grouped.
  # + or - depending on condition.
  (0..roman_string.length - 1).each do |i|
    if ROMAN_FIGURES[roman_string[i]] >= ROMAN_FIGURES[roman_string[i + 1]]
      decimal_number += ROMAN_FIGURES[roman_string[i]]
    else
      decimal_number -= ROMAN_FIGURES[roman_string[i]]
    end
  end
  # + or - depending on condition.
  return decimal_number
end
