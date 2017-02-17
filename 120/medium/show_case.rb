class Incrementor
  def initialize
    @current_index = 0
  end

  def increment_current_index!
    if current_index == 1
      self.current_index = 0
    else
      self.current_index = current_index + 1
    end
  end

  private

  attr_accessor :current_index
end

test = Incrementor.new
puts test.increment_current_index!
