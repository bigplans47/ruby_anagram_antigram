require('rspec')
require('pry')
require('anagram_antigram')

# describe('anagram_calc') do
#
#   it("this takes 2 words and compares if they are anagrams") do
#     my_anagram = Anagram.new()
#     expect(my_anagram.anagram_calc("ruby bury")).to(eq("These words are anagrams"))
#   end
#
#   it("this takes 2 words and compares if they are anagrams regardless of case") do
#     my_anagram = Anagram.new()
#     expect(my_anagram.anagram_calc("RUby Bury")).to(eq("These words are anagrams"))
#   end
#
#
# end

describe('palin_calc') do

  it("takes 2 words and compares if they are anagrams regardless of case") do
    my_anagram = Anagram.new()
    expect(my_anagram.palin_calc("Level level"))to(eq("palindrom occured"))
  end

end
