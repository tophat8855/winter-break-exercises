class PalindromeChecker
  def initialize(string)
    @string = string
    @length = string.length - 1
  end

  def switchy
    (@string.length/2).times do |index| 
      @string[index], @string[-index - 1] = @string[-index - 1], @string[index]
    end
    @string
  end

  def check_palindrome
    save_the_string = @string.clone
    compare_to_this_string = self.switchy
    if save_the_string == compare_to_this_string
      "#{@string} is a palindrome"
    else
      "#{save_the_string} is NOT a palindrome"
    end

  end
end

puts "Enter a string for flipping"
string = gets.chomp
switch_this = PalindromeChecker.new(string)
puts switch_this.switchy

puts "Enter a string to check for palindrome-ness"
string = gets.chomp
check_this = PalindromeChecker.new(string)
puts check_this.check_palindrome
