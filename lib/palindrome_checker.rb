class PalindromeChecker
  def initialize(string)
    @string = string
  end

  def switchy
    outer_index = 0
    while outer_index < (@string.size - 1)
      inner_index = 0
      while inner_index < (@string.size - outer_index - 1)
        @string[inner_index], @string[inner_index + 1] = @string[inner_index + 1], @string[inner_index]
        inner_index += 1
      end
      outer_index += 1
    end
    @string
  end
end

puts "Enter a string"
string = gets.chomp
switch_this = PalindromeChecker.new(string)
puts switch_this.switchy
