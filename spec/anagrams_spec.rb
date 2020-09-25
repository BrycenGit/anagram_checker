require ('rspec')
require ('anagrams')

describe ('Anagram#anagrams') do
  it ('will check the input to see if it contains vowels') do
    anagram = Anagram.new('hello')
    expect(anagram.has_vowel).to(eq(true))
  end

  it ('will split phrase into an array words') do
    anagram = Anagram.new('hello my friend!')
    expect(anagram.split_phrase).to(eq(["hello", "my", "friend"]))
  end
end