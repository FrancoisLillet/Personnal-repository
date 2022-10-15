def group_anagrams(words)
  # TODO: group anagrams. Le Wagon kata 14th of October 2022
  # For each element of the array, we will start by creating a sub-array only with
  # this its anagrams. To do so, I have to compare its downcased and capitalized version to
  # every other word of the array. If it is the same, I return
  # them as an sub-array in the main grouped_anagram array. Then I delete those elements,
  # to make the interation more and more simple.
  grouped_anagrams = []
  (0..words.count - 1).each do |i|
    grouped_anagrams[i] = words.select do |word|
      word.downcase.chars.sort == words[i].downcase.chars.sort
    end
  end
  return grouped_anagrams.uniq
end
