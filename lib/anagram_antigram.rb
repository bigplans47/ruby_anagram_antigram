class Anagram
  # puts enter a sentence

  single_word_at_0
  single_word_at_1
  letters_of_word_at_0
  letters_of_word_at_1
  first_letter_of_word

  user_input = "Ruby bury"
  def anagram_calc(user_input)
    all_words = user_input.split(" ")
    total_number_of_words = all_words.length
    number_of_words = all_words.length

    # n = 0
    # number_of_words-1.times() do

      # if all_words[0].length === all_words[1].length
        # assuming working off 2 words only for now
    single_word_at_0 = all_words[0]
    single_word_at_1 = all_words[1]
    letters_of_word_at_0 = single_word_at_0.split("")
    total_letters_0 = letters_of_word_at_0.length
    letters_of_word_at_1 = single_word_at_1.split("")
    total_letters_1 = letters_of_word_at_1.length

    x=0
    count_match = 0
    while (x<total_letters_0)
      first_letter_of_word = letters_of_word_at_0[x]
        # note first letter is an r
      letters_of_word_at_1.each do |letter_of_word_at_1|
        if (letter_of_word_at_1 == first_letter_of_word)
          puts "good bitch"
          count_match=count_match+1
          # puts count_match
        else
          puts "no match"
        end
        puts count_match
      end
      # puts x
      x=x+1
    end
    if count_match == total_letters_0
      return "These words are anagrams"
    end
  end
  anagram_calc(user_input)



end
