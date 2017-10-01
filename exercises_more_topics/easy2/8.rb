def max_by(array)
  result = []
  array.each do |el|
    result << yield(el)
  end

  return array[0] if result.size == 1 
  largest = nil
  idx = 0
  while idx < result.size - 1 do
    if result[idx] > result[idx + 1]
      largest = array[idx]
    end
    idx += 1
  end
  largest
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
