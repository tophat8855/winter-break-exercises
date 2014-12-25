class TemperatureConverter
  def self.to_fahrenheit(celsius_temperature)
    (celsius_temperature * (9.0/5.0) + 32.0).round(2)
  end

  def self.to_celsius(fahrenheit_temperature)
    ((fahrenheit_temperature - 32.0) * (5.0/9.0)).round(2)
  end
end

puts "Type '1' to convert from Celsius to Fahrenheit"
puts "OR Type '2' to convert from Fahrenheit to Celsius"

selection = gets.chomp

if selection == '1'
  puts 'Enter Celsius Temperature:'
  celsius = gets.chomp.to_f
  fahrenheit = TemperatureConverter.to_fahrenheit(celsius)
  puts "#{celsius} degrees Celsius is equal to #{fahrenheit} degrees Fahrenheit"
elsif selection == '2'
  puts 'Enter Fahrenheit Temperature:'
  fahrenheit = gets.chomp.to_f
  celsius = TemperatureConverter.to_celsius(fahrenheit)
  puts "#{fahrenheit} degrees Fahrenheit is equal to #{celsius} degrees Celsius"
end
