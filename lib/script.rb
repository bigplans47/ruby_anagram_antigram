#!/usr/bin/ruby
# load 'anagram_antigram.rb'
require('./anagram_antigram')
puts "Enter your name"
name = gets.chomp
puts "Enter some words to check if they are Anagrams, Antigrams or Palindromes"
user_input = gets.chomp
your_anagram = Anagram.new(name, user_input)
checked_input = your_anagram.real_word(user_input)
puts "Vowel check pass?"
puts checked_input
if checked_input == true
  answer = your_anagram.anagram_calc(user_input)
  puts answer
  if answer == "All your words are Anagrams"
    palindrome_happen = your_anagram.palin_calc(user_input)
    puts palindrome_happen
  end
end
puts your_anagram.name1 + " your original input was: " + your_anagram.user_input1
