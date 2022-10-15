def ip_to_num(ip_address)
  # The adress is like xxx.xx.xx.xxx Lets's separate the 4 octets of 8 bits each.
  ip_adress = ip_address.split(".")
  # Let's convert each of those element into an integer.
  # We will store them into an array called "octets" with 4 elements.
  octets = []
  ip_adress.each { |sequence| octets << sequence.to_i }
  binary_sequence = []
  # That will store the sequences of 001011 of each octet.
  # For each element of this array of numbers, we make the conversion to a binary number.
  octets.each do |octet|
    # For each octet, we have to do an iteration for every power of 2. If the number is
    # greater than the current power of 2, it pushes a 1 and the difference is compared
    # with the next power of two. We need an array to store the results.
    8.times do |i|
      power = 7 - i
      if octet - (2**power) >= 0
        binary_sequence << 1
        octet = octet - (2**power)
      else
        binary_sequence << 0
      end
    end
  end
  # Now we have our binary sequence, let's create a number by adding every power of
  # 2 corresponding to the sequence.
  decimal_address = 0
  power = 31
  binary_sequence.each do |bit|
    decimal_address += (2**power) * bit
    power -= 1
  end
  return decimal_address
end

def num_to_ip(number)
  # We recreate a long array of 32-bits, just as we did in the previous method.
  # To do so, we recreate an empty binary_sequnce array.
  binary_sequence = []
  32.times do |i|
    power = 31 - i
    if number - (2**power) >= 0
      binary_sequence << 1
      number = number - (2**power)
    else
      binary_sequence << 0
    end
  end
  binary_octets = []
  # Now we have a list of octets. Let's separate them in 4 arrays of 8 octets.
  4.times { binary_octets << binary_sequence.slice!(0, 8) }
  # Our octets are well separated. Now, for each octet, we want to return a decimal number.
  decimal_numbers_list = []
  binary_octets.each do |binary_octet|
    power = 7
    decimal_number = 0
    binary_octet.each do |bit|
      decimal_number += (2**power) * bit
      power -= 1
    end
    decimal_numbers_list << decimal_number
  end
  return decimal_numbers_list.join(".")
end
