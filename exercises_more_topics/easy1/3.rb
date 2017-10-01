def missing(array)
  counter = Hash.new(0)
  range_arr = (array.first..array.last).to_a
  (range_arr + array).each do |num|
    counter[num] += 1
  end

  counter.keys.select { |key| counter[key] < 2 }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []