require('rspec')
require('pry')
require('anagram_antigram')

describe('anagram_calc') do

  it("this takes 2 words and compares if they are anagrams") do
    my_anagram = Anagram.new()
    expect(my_anagram.anagram_calc("ruby bury")).to(eq("These words are anagrams"))
  end
end
