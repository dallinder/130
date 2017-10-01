def one?(array)
  counter = 0
  el_that_return_true = []

  while counter < array.size
    if yield(array[counter])
      el_that_return_true << yield(array[counter])
    end
    counter += 1
    break if el_that_return_true.size > 1
  end

  return true if el_that_return_true.size == 1
  false
end

p one?([1, 3, 5, 6]) { |value| value.even? } == true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true } == false
p one?([1, 3, 5, 7]) { |value| false } == false
p one?([1, 3, 5, 6]) { |value| value.even? } == true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true } == false
p one?([1, 3, 5, 7]) { |value| false } == false
p one?([]) { |value| true } == false
p one?([]) { |value| true } == false