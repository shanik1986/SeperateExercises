class Tree
  include Enumerable
  def each
    while more_items?
      yield(current_item)
      current_item = next_item
    end
    self
  end
end
