# Group 1
#========
def check_return_with_proc
  my_proc = proc { return  }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# 1) Initializing within a method a proc that returns, and then calling it will
# will exit the method

# Group 2
#=========
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)

# 1) If not within a method, we cannot initialize a Proc that returns. Apparently,
# we can only infuse the closures contained by the proc with code that can work in
# scope the Proc was initialized in.

# Group 3
#=========
def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda

# 1) Lambdas are not returning when initialized and called within a method.

# Group 4
#========
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)

# 1) Even when initialized outside of a method, a Lambda will not raise an error
# when trying to return. On the other hand, it also won't return...

# Group 5
#=========
def block_method_3
  yield
end

block_method_3 { return }

# 1) A block yielded to from a method cannot return, and will raise an error if tries
