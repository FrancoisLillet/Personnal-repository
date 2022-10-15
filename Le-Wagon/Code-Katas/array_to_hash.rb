# Kata of Le Wagon, 14th of October.

def array_to_hash(array)
  # TODO: implement the method :)
  # Create a new hash
  hash = {}
  # Distinguish if a block was passed or not
  if block_given?
    array.each_with_index { |item, index| hash[yield(index)] = item }
  else # If no block is passed, iterate through the array and fill the hash.
    array.each_with_index { |item, index| hash[index.to_s] = item }
  end
  return hash
end
