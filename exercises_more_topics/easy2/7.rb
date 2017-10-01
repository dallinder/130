def each_with_object(collection, object)
  collection.each do |el|
    yield(el, object)
  end
  object
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]