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

  def remove_downcase
    remove_special()
    to_downcase()
  end

  def how_many_times
    sort = @phrase.chars.sort
    sort2 = @phrase2.chars.sort
    sort.join.scan(/#{sort2}/i)
  end

  # def to_hash
  #   dict = how_many_times.group_by { |str| str }
  #   dict.each_key do |key|
  #     puts dict.fetch(key)
  #   end
  #   return dict
  # end

  def count_occurence
    final_array =[]
    array = how_many_times
    array.each do |element|
      final_array << "'#{element}' has #{array.count(element)} match#{return_s(array.count(element))}"
    end
    return final_array.uniq.join(', ')
  end

  def return_s(number)
    if number > 1
      return 'es'
    end
  end


  def anagram_check
    if has_vowel()
      remove_downcase()
      sort = @phrase.chars.sort
      sort2 = @phrase2.chars.sort
      if sort.join == sort2.join
        return "These 2 phrases are anagrams"
      else
        if sort.join.match?("#{sort2}")
          puts "#{count_occurence}"
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