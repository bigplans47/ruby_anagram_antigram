class Anagram
  puts enter a sentence
  user_input = "ruby bury"
  def anagram_antigram_calculator(user_input)
    word = user_input.split(" ")
    if word[0].length === word[1].length
    return word
    end

  end
end
