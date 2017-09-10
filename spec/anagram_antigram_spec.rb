require('rspec')
require('pry')
require('anagram_antigram')
  # testing below
describe('anagram_calc') do
  # criteria 1
  it("this takes 2 words and compares if they are anagrams") do
    my_anagram = Anagram.new()
    expect(my_anagram.anagram_calc("ruby bury")).to(eq("All the words are anagrams"))
  end
# criteria 2
  it("this takes 2 words and compares if they are anagrams regardless of case") do
    my_anagram = Anagram.new()
    expect(my_anagram.anagram_calc("RUby Bury")).to(eq("All the words are anagrams"))
  end
  # criteria 5 and 6-for antigrams
  it("this takes 2 words and compares if they antigrams") do
    my_anagram = Anagram.new()
    expect(my_anagram.anagram_calc("Soup man tinxyz")).to(eq("These words have no letter matches and are antigrams"))
  end
  # criteria 6-for anagrams
  it("this takes 2 words and compares if they antigrams") do
    my_anagram = Anagram.new()
    expect(my_anagram.anagram_calc("post, Pots, spot, stop, tops")).to(eq("All the words are anagrams"))
  end
end

describe('palin_calc') do
  # criteria 3
  it("takes 2 words and compares if they are anagrams regardless of case") do
    my_anagram = Anagram.new()
    expect(my_anagram.palin_calc("Level level")).to(eq("Palindrom occured"))
  end
end

describe('real_word') do
  # criteria 4
  it("A word must contain a vowel (a, i, e, o, u) or y, this check is done here") do
    my_anagram = Anagram.new()
    expect(my_anagram.real_word("rib ths boss")).to(eq("You need to input actual words! Check your vowels in ALL words"))
  end
end
