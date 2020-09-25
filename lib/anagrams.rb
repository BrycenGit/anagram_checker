class Anagram
  attr_accessor :phrase, :phrase2

  def initialize(phrase, phrase2)
    @phrase = phrase
    @phrase2 = phrase2
  end

  def has_vowel
    @phrase.match?(/[aeiou]/i) && @phrase2.match?(/[aeiou]/i)
  end

  def remove_special
    @phrase.gsub!(/[^A-Za-z]/, '')
    @phrase2.gsub!(/[^A-Za-z]/, '')
  end

  def to_downcase
    @phrase.downcase!
    @phrase2.downcase!
  end

  def anagram_check
    if has_vowel()
      remove_special()
      to_downcase()
      if @phrase.chars.sort.join == @phrase2.chars.sort.join
        return "is anagram"
      else
        return "is not anagram"
      end
    else
      return "these are not words"
    end
  end
end