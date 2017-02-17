require 'pry'

class PinGame

  def initialize(min, max)
    @user_answer = nil
    @min = min
    @max = max
    @remaining_guesses = Math.log2(max - min).to_i + 1
  end

  def play
    reset
    while guesses_left?
      display_remaining_guesses
      ask_for_number
      # binding.pry if remaining_guesses == remaining_guesses
      self.user_answer = get_user_guess
      break if correct_number?
      hint_user
      self.remaining_guesses = remaining_guesses - 1
    end
    print_result
  end

  private
  attr_accessor :remaining_guesses, :user_answer
  attr_reader :correct_number, :min, :max

  def reset
    @correct_number = rand(min..max)
  end

  def hint_user
    hint = user_answer < correct_number ? "low" : "high"
    puts "Your guess is too #{hint}"
  end

  def print_result
    if correct_number?
      puts "Good job! You guessed right"
    else
      puts "You are out of guesses. You lost"

    end
  end

  def correct_number?
    user_answer == correct_number
  end

  def display_remaining_guesses
    puts "You have #{remaining_guesses} guesses left"
  end

  def ask_for_number
    puts "Enter a number between #{min} and #{max}: "
  end

  def get_user_guess
    answer = nil
    loop do
      answer = gets.chomp
      # binding.pry
      break if number?(answer) && (min..max).include?(answer.to_i)
      puts "Invalid input! Please enter a number between #{min} and #{max}"
    end
    answer.to_i
  end

  def number?(number)
    number.to_i.to_s == number
  end

  def guesses_left?
    remaining_guesses > 0
  end
end

game = PinGame.new(501, 1500)
game.play
