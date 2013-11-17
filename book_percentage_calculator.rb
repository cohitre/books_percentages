require 'open-uri'
class StringPercentagesCalculator
  def self.calculate(string_1, string_2)
    counter_1 = StringWordsCounter.new(string_1)
    counter_2 = StringWordsCounter.new(string_2)
    unique_words_1 = counter_1.unique_words
    unique_words_2 = counter_2.unique_words
    # puts("These are the unique words in each array:", unique_words_1, unique_words_2)
    shared_words = 0
    unique_words_1.each { |word|
      if unique_words_2.include?(word)
        shared_words += 1
      end
    }
    fraction_string = "#{shared_words}/#{unique_words_1.length}"
    percentage = shared_words.to_f / unique_words_1.length.to_f
    "The first string shares #{fraction_string} = #{percentage * 100}% of its unique words with the second string."
  end
  
end

class StringWordsCounter
  def initialize(string_1)
    @string = string_1
  end
  def words
    @string.gsub(/[.,"'-]/,' ').split(/[\s]+/)
  end
  def unique_words
    words_array = words
    words_array.map{|i| i.downcase}.uniq
  end
    
end
