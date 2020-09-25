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
      sort = @phrase.chars.sort
      sort2 = @phrase2.chars.sort
      if sort.join == sort2.join
        return "These 2 phrases are anagrams"
      else
        if sort.join.match?("#{sort2}")
          return "These 2 phrases are not an anagrams"
        else
          return "These phrases are antigrams"
        end
      end
    else
      return "Please use real words"
    end
  end
end