class Anagram
  # puts enter a sentence
  user_input = "ruby bury"
  def anagram_calc(user_input)
    words = user_input.split(" ")
    if words[0].length === words[1].length
      single_word = words[0]
      letters_of_word = single_word.split("")
      return letters_of_word[0]
    end

  end
end
