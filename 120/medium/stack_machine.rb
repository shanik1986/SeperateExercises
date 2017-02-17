require 'pry'

class InvalidCommandError < RuntimeError

end

class Minilang
  VALID_COMMANDS = ['PRINT', 'PUSH', 'MULT', 'ADD', 'POP', 'DIV', 'MOD', 'SUB']

  def initialize(commands)
    @stack = []
    @register = 0
    @commands = commands.split
  end

  def eval
    commands.each do |command|
      # binding.pry
      if VALID_COMMANDS.include?(command)
        case command
        when 'PRINT' then puts register
        when 'PUSH'  then stack.push(register)
        when 'MULT'  then self.register = register * stack.pop
        when 'ADD'   then self.register = register + stack.pop
        when 'POP'   then pop
        when 'DIV'   then self.register = register / stack.pop
        when 'MOD'   then self.register = register % stack.pop
        when 'SUB'   then self.register = register - stack.pop
        end
      elsif command.to_i.to_s == command
        self.register = command.to_i
      # else
      #   # binding.pry
      #   puts "Error, #{command} is an invalid command!"
      #   exit
      end
    end
  end

  private

  attr_reader :stack, :commands
  attr_accessor :register

  def pop
    if !stack.empty?
      self.register = stack.pop
    end
  end
end

# Minilang.new('PRINT').eval
# Minilang.new('5 PUSH 3 MULT PRINT').eval
# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# Minilang.new('5 PUSH POP POP PRINT').eval
# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

# Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
