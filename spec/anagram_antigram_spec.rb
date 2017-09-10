require('rspec')
require('pry')
require('anagram_antigram')
  # testing below
describe('anagram_calc') do
  # criteria 1
  it("this takes 2 words and compares if they are anagrams") do
    my_anagram = Anagram.new("Mike", "ruby bury")
    expect(my_anagram.anagram_calc("ruby bury")).to(eq("All your words are Anagrams"))
  end
# criteria 2
  it("this takes 2 words and compares if they are anagrams regardless of case") do
    my_anagram = Anagram.new("Mike", "Ruby bUry")
    expect(my_anagram.anagram_calc("Ruby bUry")).to(eq("All your words are Anagrams"))
  end
  # criteria 5 and 6-for antigrams
  it("this takes 2 or more words and compares if they antigrams") do
    my_anagram = Anagram.new("Mike", "soup man tic")
    expect(my_anagram.anagram_calc("soup man tic")).to(eq("Your words have no letter matches and are Anti-grams"))
  end
  # criteria 6-for anagrams
  it("this takes multiple words and compares if they anagrams") do
    my_anagram = Anagram.new("Mike", "post, Pots, spot, stop, tops")
    expect(my_anagram.anagram_calc("post, Pots, spot, stop, tops")).to(eq("All your words are Anagrams"))
  end
end
# next criteria
describe('palin_calc') do
  # criteria 3
  it("takes 2 words and sees if they are palindromes") do
    my_anagram = Anagram.new("Mike", "Level level")
    expect(my_anagram.palin_calc("Level level")).to(eq("Your words are Palindromes"))
  end
end
# next criteria
describe('real_word') do
  # criteria 4
  it("A word must contain a vowel (a, i, e, o, u) or y, this check is done here") do
    my_anagram = Anagram.new("Mike", "rib ths boss")
    expect(my_anagram.real_word("rib ths boss")).to(eq("You need to input actual words! Check your vowels in ALL words"))
  end
end
