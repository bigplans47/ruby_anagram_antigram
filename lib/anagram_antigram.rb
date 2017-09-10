class Anagram
  all_words = []
  number_of_words = 0
  single_word_at_0 =[]
  single_word_at_1 =[]
  letters_of_word_at_0 =[]
  letters_of_word_at_1 =[]
  total_letter_array = []
  # instance variables
  def initialize(name, user_input)
    @name = name
    @user_input = user_input
  end
# name
  def name1
    @name
  end
# user_input
  def user_input1
    @user_input
  end
# function
  def anagram_calc(user_input)
    user_input = user_input.downcase.gsub(/[^a-z0-9\s]/i, '')
    all_words = user_input.split(" ")
    number_of_words = all_words.length
    single_word_at_0 = all_words[0]
    letters_of_word_at_0 = single_word_at_0.split("")
    total_letters_0 = letters_of_word_at_0.length
    total_letter_array = letters_of_word_at_0
    y=0
    count_of_words=0
    count_of_words_anti=0
    while (y<all_words.length-1)
      single_word_at_1 = all_words[y+1]
      letters_of_word_at_1 = single_word_at_1.split("")
      total_letter_array = total_letter_array.concat(letters_of_word_at_1)
      total_letters_1 = letters_of_word_at_1.length
      x=0
      count_match = 0
      while (x<total_letters_0)
        single_letter_of_word = letters_of_word_at_0[x]
        letters_of_word_at_1.each do |letter_of_word_at_1|
          if (letter_of_word_at_1 == single_letter_of_word) & (total_letters_0 == total_letters_1)
            puts "Letter matched"
            count_match=count_match+1
            break
          else
            puts "No match"
          end
          puts "Current number of letter matches"
          puts count_match
        end
        x=x+1
      end
      y+=1
      if count_match == total_letters_0
      count_of_words +=1
      end
    end
    puts "All Words have been checked"
    puts total_letter_array
    puts total_letter_array.length
    puts total_letter_array.uniq.length
    if count_of_words+1 == all_words.length
      return "All your words are Anagrams"
   elsif (count_of_words == 0) & (total_letter_array.uniq.length == total_letter_array.length)
      return "Your words have no letter matches and are Anti-grams"
    else
      return "Your words are not Anagrams or Anti-grams"
    end
   # # elsif count_of_words_anti == number_of_words
   # #   antigram
   # #   angram count match up with all_words.length
   # #   puts all are anagram_calc
   # end
  end
  # anagram_calc(user_input)
    # user_input = "Level level"
  def palin_calc(user_input)
    user_input = user_input.downcase.gsub(/[^a-z0-9\s]/i, '')
    the_reverse = user_input.reverse()
    if user_input == the_reverse
      return "Your words are Palindromes"
    else
      "Your words are not Palindromes"
    end
  end
  # palin_calc(user_input)
  def real_word(user_input)
    user_input = user_input.downcase.gsub(/[^a-z0-9\s]/i, '')
    all_words = user_input.split(" ")
    number_of_words = all_words.length
    x=0
    y=0
    count_vowel = 0
    while (x<number_of_words)
      single_word = all_words[x]
      letters_of_word = single_word.split("")
      letters_of_word.each do |letter_of_word|
        puts letter_of_word
        if ((letter_of_word == "a") | (letter_of_word == "i")  | (letter_of_word == "e")| (letter_of_word == "o")| (letter_of_word == "u")| (letter_of_word == "y"))
          count_vowel +=1
          puts "vowel occured"
        end
      end
      if count_vowel == 0
        break
      end
      x += 1
    end
    if (x == number_of_words) & (count_vowel >= number_of_words)
      # the true here means you have vowels every word
      true
    else
      "You need to input actual words! Check your vowels in ALL words"
    end
  end
  # real_word(user_input)
end
