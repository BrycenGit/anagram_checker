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
    expect(anagram.phrase2).to(eq('goodfriends'))
  end

  it ('will make all characters lowercase in string') do
    anagram = Anagram.new('HELLO', 'Hello')
    anagram.to_downcase
    expect(anagram.phrase).to(eq('hello'))
  end

  it ('will check if the two phrases are anagrams') do
    anagram = Anagram.new('Hello', 'good bye')
    expect(anagram.anagram_check).to(eq('is not anagram'))
  end
  it ('will check if the two phrases are antigrams') do
    anagram = Anagram.new('Halo', 'bye')
    expect(anagram.anagram_check).to(eq('yes'))
  end

end