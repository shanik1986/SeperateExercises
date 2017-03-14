class Phrase
  attr_reader :phrase, :word_counter

  def initialize(sentence)
    @phrase = sentence.downcase
  end

  def word_count
    phrase
          .downcase
          .chars
          .map { |chr| chr.match(/'?[0-9]?[a-z]?\s?/).to_s.empty? ? ' ' : chr }
          .join
          .split
          .map { |word| word.match(/'[a-z]*'/) ? word[1..-2] : word }
          .each_with_object(Hash.new(0)) { |word, result| result[word] += 1 }
  end
end
# #
# phrase = Phrase.new("all the 'kings' horses and all the kings men")
#
# p phrase.word_count
