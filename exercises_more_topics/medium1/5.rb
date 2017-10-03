items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*first, wheat|
  puts first.join(', ')
  puts wheat
end

puts "---------------------"

gather(items) do |apples, *second, wheat|
  puts apples
  puts second.join(', ')
  puts wheat
end

puts '---------------------'

gather(items) do |apples, *therest|
  puts apples
  puts therest.join(', ')
end

puts '-----------------------'

gather(items) do |*firsttwo, cabbage, wheat|
  puts firsttwo.join(', ') + ', ' + cabbage + ', and ' + wheat
end
