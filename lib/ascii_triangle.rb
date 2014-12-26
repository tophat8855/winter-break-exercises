puts "What character do you want to make the pyramid out of?"
character = gets.chomp
puts "How many rows of #{character}'s do you want?"
finish_row = gets.chomp.to_i
row = 1
width = 80
half_width = width / 2
while row <= finish_row
  puts (" " * (half_width - row)) + ("#{character}" * (2 * row - 1)) + (" " * (half_width - row))
  row += 1
end
