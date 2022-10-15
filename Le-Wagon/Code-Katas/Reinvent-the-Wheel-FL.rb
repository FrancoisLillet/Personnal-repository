# FL version of .map method:
def map(array)
  # We set a counter equal to zero, it will be incremented as we
  # iterate manually through our array
  i = 0
  # Then we create a new empty array. It will accumulate the result
  # yielded by each iteration. Then at the end, we will return that very
  # array.
  new_array = []
  # Stop iterating when array[i] == 0 , which means that we have
  # passed all the elements.
  until array[i] == nil
    new_array[i] = yield(array[i])
    i += 1
  end
  return new_array
end

# FL version of .join method:
def join(array)
  i = 0
  joined_text = ""
  until array[i] == nil
    joined_text = joined_text + array[i]
    i += 1
  end
  return joined_text
end

# FL version of .chars
def chars(string)
  i = 0
  array = []
  until string[i] == nil
    array[i] = string[i]
    i += 1
  end
  return array
end


# FL personalized method to ventilate a text:
def ventilate(name)
  join(map(chars(name)) { | letter | letter + " " })
end
