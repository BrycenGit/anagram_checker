class Anagram
  attr_accessor (:phrase)

  def initialize(phrase)
    @phrase = phrase
  end

  def has_vowel
    @phrase.match?(/[aeiou]/i)
  end

  def split_phrase
    @phrase.gsub!(/[^A-Za-z\s*]/, '').split(' ')
  end
end