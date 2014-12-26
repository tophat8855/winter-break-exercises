class GuessingGame
  def initialize(secret_number = rand(1..100))
    @secret_number = secret_number
    @turns = 0
  end

  def compare(guess)
    if @secret_number > guess
      @turns += 1
      "higher"
    elsif @secret_number < guess
      @turns += 1
      "lower"
    else
      @turns += 1
      "You got it in #{@turns} tries"
    end
  end
end

new_game = GuessingGame.new
puts "Guess a number between 1 and 100"
guess = gets.chomp.to_i
compared_result = new_game.compare(guess)
puts compared_result

while (compared_result == "lower") || (compared_result == "higher")
  guess = gets.chomp.to_i
  compared_result = new_game.compare(guess)
  puts compared_result
end
