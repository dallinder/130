def assigning_array(array)
  yield(array)
end

array = ['cardinal', 'bluejay', 'oriole', 'goose']

assigning_array(array) { |_,_,*raptors| puts "Raptors: #{raptors.join(', ')}"}