puts "How big do you want your multiplication table?"
puts "Length:"
length = gets.chomp
puts "Width:"
width = gets.chomp

puts "A multiplication table:"

topline = "   "
index = 1
while index <= width.to_i
  topline << "#{index}\t"
  index += 1
end

puts topline
puts

counter = 1
while counter <= length.to_i
  next_line = "#{counter}| "
  width_index = 1
  while width_index <= width.to_i
    next_line << "#{width_index * counter}\t"
    width_index += 1
  end
  puts next_line

  counter += 1
end
