class Anagram
  # puts enter a sentence
  user_input = "ruby bury"
  single_word_at_0
  single_word_at_1
  letters_of_word_at_0
  letters_of_word_at_1
  first_letter_of_word

  def anagram_calc(user_input)
    all_words = user_input.split(" ")
    number_of_words = all_words.length

    # if all_words[0].length === all_words[1].length
      # assuming working off 2 words only for now
    single_word_at_0 = all_words[0]
    single_word_at_1 = all_words[1]
    letters_of_word_at_0 = single_word_at_0.split("")
    letters_of_word_at_1 = single_word_at_1.split("")
    first_letter_of_word = letters_of_word_at_0[0]
      # note first letter is an r
    count =0
    # def find_the_letter(letters_of_word_at_1)
    #
    letters_of_word_at_1.each do |letter_of_word_at_1|
      if (letter_of_word_at_1 == first_letter_of_word)
        puts "good bitch"
        count = count + 1
        if count == 1
          puts "match occured"
        end
      else
        count = count
      end
    end
    puts count
  end



end
