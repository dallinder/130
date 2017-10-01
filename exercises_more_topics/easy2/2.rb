def zip(arr1, arr2)
  result = []
  counter = 0

  while counter < arr1.size do
    result << [arr1[counter], arr2[counter]]
    counter += 1
  end

  result
end

p zip([1, 2, 3], [4, 5 ,6])