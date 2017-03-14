class Anagram
  attr_reader :inspected_word, :letters

  def initialize(inspected_word)
    @inspected_word = inspected_word
    @letters = sorted_letters(inspected_word)
  end

  def match(possibles)
    possibles.select { |possible| letters == sorted_letters(possible) &&
                                  different_words?(possible, inspected_word) }
  end

  private

  def sorted_letters(word)
    word.downcase.chars.sort
  end

  def different_words?(word1, word2)
    word1.downcase != word2.downcase
  end
end
