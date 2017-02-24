# Group 1
#=========
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# The proc is an object of the Proc class that encapsulates a chunk of code as one of it's states.
# Even when the block needs arguments for its execution, not passing
# arguments will not raise an error. If the block needs arguments but none are
# passed, the parameters are going to be initialized to nil

# Group 2
#=========
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# The Lambda is an object of the Proc class. This object can be initialized
# in two different ways:
# 1) test = lambda { |item| ...block here... }
# 2) test = -> (item) { ...block here... }

# The lambda, like the proc, encapsulates a chunk of code, and we can also pass
# parameters to it.
# Unlike procs, If a lambda needs an arguament but we are not passing one, it
# will raise an ArgumentError

# Group 3
#=========
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# When yielding to a block, the yield statement will be sensetive to whether or
# not a block was passed to the method, but it will not be sensitive to whether
# an argument was passed to the block or needed by it.

# Group 4
#========

def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# 1) The scope of the blockc is only the arguments that were passed to it. If an
# argument was passed to thee method, and the method yielded to a block without
# passing an arguement, than the block would not have access to that parameter.

# 2) The block is not sensitive to the number of arguments that are passed to it.
