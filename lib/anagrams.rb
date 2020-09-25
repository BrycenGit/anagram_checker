class Anagram
  attr_accessor (:phrase)

  def initialize(phrase, phrase2)
    @phrase = phrase
    @phrase2 = phrase2
  end

  def has_vowel
    @phrase.match?(/[aeiou]/i) && @phrase2.match?(/[aeiou]/i)
  end

  def split_phrase
    @phrase.gsub!(/[^A-Za-z\s*]/, '').split(' ')
  end
end