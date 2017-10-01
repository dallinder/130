def step(start, ending, step)
  counter = start

  while counter <= ending
    yield(counter)
    counter = counter + step
  end
end

p step(1, 10, 3) { |value| puts "value = #{value}" }