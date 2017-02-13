class Banner
  INITIAL_HORIZONTAL_SPACE = 2
  def initialize(message, width)
    @width = width
    @message = message.center(width)
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' + '-' * (INITIAL_HORIZONTAL_SPACE + @message.size) + '+'
  end

  def empty_line
    '|' + ' ' * (INITIAL_HORIZONTAL_SPACE + @message.size) + '|'
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 5)
puts banner
