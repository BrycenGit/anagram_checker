require ('rspec')
require ('anagrams')

describe ('Anagram#anagrams') do
  it ('will check the input to see if it contains vowels') do
    anagram = Anagram.new('hello')
    expect(anagram.has_vowel).to(eq(true))
  end
end