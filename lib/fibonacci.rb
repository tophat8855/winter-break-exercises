fibonacci_array = [0, 1]

first = 0
second = 1

while fibonacci_array.size < 100
  new_sum = first + second
  first = second
  second = new_sum
  fibonacci_array << new_sum
end
p fibonacci_array
