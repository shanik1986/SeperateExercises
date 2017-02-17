require 'pry'

class CircularQueue
  attr_accessor :current_index, :positions
  def initialize(buffer_size)
    @positions = Array.new(buffer_size) #[-100, 4, -5, -500, 0, -400]
    @current_index = 0
  end

  def enqueue(new_obj)
    positions[current_index] = new_obj
    increment_current_index!
  end

  def dequeue
    valid_slots = positions.select { |item| !item.nil? }
    return nil if valid_slots.empty?

    index = positions.index(valid_slots.min)
    result = positions[index]

    positions[index] = nil
    result
  end

  private

  # attr_accessor :current_index, :positions

  def increment_current_index!
    if current_index == (positions.size - 1)
      self.current_index = 0
    else
      # binding.pry
      self.current_index = current_index + 1
    end
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1
#
queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
# p queue.positions
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
#
queue = CircularQueue.new(4)
# p queue.positions
puts queue.dequeue == nil
#
queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1
#
queue.enqueue(3)
queue.enqueue(4)
#
puts queue.dequeue == 2
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
# p queue.positions
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
