# method implementation
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number
end

# method invocation
times(5) do |num| # the |stuff| is the block local var
  puts num
end
