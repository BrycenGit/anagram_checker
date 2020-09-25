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
    expect(anagram.anagram_check).to(eq('These 2 phrases are not an anagrams'))
  end

  it ('will check if the two phrases are antigrams') do
    anagram = Anagram.new('Halo', 'bye')
    expect(anagram.anagram_check).to(eq('These phrases are antigrams'))
  end

  it ('will check the return with no vowels in each word') do
    anagram = Anagram.new('lll', 'jjj')
    expect(anagram.anagram_check).to(eq('Please use real words'))
  end

  it ('will re turn an array of letters that each phrase has in common') do
    anagram = Anagram.new('helloo', 'helloop')
    expect(anagram.how_many_times).to(eq(["e", "h", "l", "l", "o", "o"]))
  end

end