# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.
# Notes:
# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.
# Examples
# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False

# Solution FL
def scramble(s1,s2)
  # List of all the letters that are in s1 at least once
  s3 = s2.chars.uniq
  # Then for each of these letters, we will check if it appears at least as often in
  # s1 as in s2.
  i = 0
  s3.each { |letter| i += 1 if s1.count(letter) >= s2.count(letter) }
  # If the condition above was was met for all the letters, it means that s1 contains s2.
  # If not, it means that there is at least one letter that is more ofthen in s2 than in s1,
  # so s1 cannot contain s2.
  return i == s3.count
end
