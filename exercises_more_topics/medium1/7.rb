def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# this example returns nil

puts '-------------------------------------'

# my_proc = proc { return }

# def check_return_with_proc_2(my_proc)
#   my_proc.call
# end

# check_return_with_proc_2(my_proc)

# this throws a LocalJumpError unexpected return

def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

p check_return_with_lambda

# the return value is nil and the code after puts displayed on the screen unlike example1

puts '--------------------------------'

my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

p check_return_with_lambda(my_lambda)

# does the same as example 3

puts '------------------------------------'

def block_method_3
  yield
end

block_method_3 { return }

# LocalJumpError unexpected return