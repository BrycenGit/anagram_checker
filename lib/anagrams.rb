class Anagram
  attr_accessor (:phrase)

  def initialize(phrase)
    @phrase = phrase
  end

  def has_vowel
    @phrase.match?(/[aeiou]/i)
  end
end