require ('rspec')
require ('anagrams')

describe ('Anagram#anagrams') do
  it ('will check both inputs to see if they contain vowels') do
    anagram = Anagram.new('hello', 'good')
    expect(anagram.has_vowel).to(eq(false))
  end

  # it ('will split phrase into an array words and will remove numbers and characters') do
  #   anagram = Anagram.new('hello my friend!')
  #   expect(anagram.split_phrase).to(eq(["hello", "my", "friend"]))
  # end
end