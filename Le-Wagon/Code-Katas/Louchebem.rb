def louchebemize_word(word)
  # Check if the word has one letter or more.
  return word if word.length < 2

  letters = word.downcase.chars
  # Distinguish the vowels and consonants.
  vowels = ["a", "e", "i", "o", "u"]
  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  # Remove the first consonants and store them in a secondary array.
  first_consonants = []
  i = 0
  first_consonants << letters.delete_at(i) until vowels.include?(letters[i])
  (letters.unshift("l") << first_consonants << suffixes.sample).join
end

def louchebemize(sentence)
  # Now, we know how to translate a word into louchebem.
  # To translate a whole sentence, we have to differenciate the words and the
  # other characters.
  alphabet_letters = ("a".."z").to_a
  character_blocks = sentence.split(/\b/)
  # Let us iterate through each character block to see if it is a word or a special
  # character, or space.
  louchebem_blocks = character_blocks.map do |character_block|
    if alphabet_letters.include?(character_block[0])
      louchebemize_word(character_block)
    else
      character_block
    end
  end
  return louchebem_blocks.join
end
