require ('rspec')
require ('anagrams')

describe ('Anagram#anagrams') do
  it ('will check both inputs to see if they contain vowels') do
    anagram = Anagram.new('hello', 'good')
    expect(anagram.has_vowel).to(eq(true))
  end

  it ('will remove special characters and spaces from both phrases') do
    anagram = Anagram.new('hello my friend!', 'good')
    anagram.remove_special
    expect(anagram.phrase).to(eq('hellomyfriend'))
  end
  it ('will remove special characters and spaces from both phrases') do
    anagram = Anagram.new('hello my friend!', 'good friends?')
    anagram.remove_special
    expect(anagram.phrase2).to(eq(''))
  end
end