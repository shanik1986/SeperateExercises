require 'pry'

class Card
  include Comparable

  attr_reader :rank, :suit
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def ==(other_card)
    value == other_card.value && suit == other_card.suit
  end

  def value
    VALUES.fetch(rank, rank)
  end
end

class Deck
  attr_reader :cards

  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def reset
    @cards = RANKS.each_with_object([]) do |rank, result|
              SUITS.each do |suit|
                result << Card.new(rank, suit)
              end
            end
  end

  def draw
    reset if cards.empty?
    cards.delete(cards.sample)
  end
end

class PokerHand
  HIGHEST_CARDS = [10, 'Jack', 'Queen', 'King', 'Ace']
  LOWEST_CARDS = ['Ace', 2, 3, 4, 5]
  attr_reader :hand

  def initialize(deck)
    @hand = reset_hand(deck)
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def suits
    hand.each_with_object([]) { |card, result| result << card.suit }
  end

  def reset_hand(deck)
    result = []
    5.times { result << deck.draw }
    result
  end

  def flush?
    suits.all? { |suit| suit == suits.first }
  end

  def royal_family?
    ranks.each { |rank| return false unless HIGHEST_CARDS.count(rank) == 1 }
    true
  end

  def royal_flush?
    flush? && royal_family?
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    some_of_a_kind?(4)
  end

  def ranks(cards_arr = hand)
    cards_arr.each_with_object([]) { |card, result| result << card.rank }
  end

  def some_of_a_kind?(cards_arr = hand, num)
    ranks_arr = ranks(cards_arr)
    iterations = (cards_arr.size - num) + 1
    iterations.times do |i|
      return ranks_arr[i] if ranks_arr.count(ranks_arr[i]) == num
    end
    false
  end

  def two_pair?
    first_pair = some_of_a_kind?(2)
    return false if !first_pair

    remaining_cards = hand.select { |card| card.value != first_pair }
    some_of_a_kind?(remaining_cards, 2)
  end

  def pair?
    some_of_a_kind?(2)
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def straight?
    lowest_cards? || consequtive?
  end

  def lowest_cards?
    ranks.each { |rank| return false unless LOWEST_CARDS.count(rank) == 1 }
    true
  end

  def consequtive?
    sorted_values = hand.map { |card| card.value }.sort

    sorted_values.each_with_index do |value, index|
      next if index.zero?
      return false if value - 1 != sorted_values[index - 1]
    end
    true
  end

  def three_of_a_kind?
    some_of_a_kind?(3)
  end
end

class Array
  alias_method :draw, :pop
end

hand = PokerHand.new(Deck.new)
hand.print

hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])

puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])

puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])

# hand.print

puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])

hand.print

puts hand.evaluate == 'Full house'
hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])

puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])

puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])

puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])

puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
