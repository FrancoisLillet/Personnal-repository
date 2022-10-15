def unique_in_order(input)
  # First in case the intput is a string, we convert it to an array.
  if input.class == String
    input = input.split("")
  end
  #Now let us iterate through the array.
  orderedArray = []
  j = 0
  for i in 0..(input.length - 1)
    if input[i] != input[i+1]
      orderedArray[j] = input[i]
      j += 1
    end
  end
  return orderedArray
end
