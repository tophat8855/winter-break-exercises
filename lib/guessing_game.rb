class GuessingGame
  def initialize(secret_number = rand(1..100))
    @secret_number = secret_number
    @turns = 0
  end

  def compare(guess)
    @turns += 1
    if @secret_number > guess
      "higher"
    elsif @secret_number < guess
      "lower"
    else
      "You got it in #{@turns} tries"
    end
  end
end

new_game = GuessingGame.new
puts "Guess a number between 1 and 100"
guess = gets.to_i
compared_result = new_game.compare(guess)
puts compared_result

while (compared_result == "lower") || (compared_result == "higher")
  guess = gets.to_i
  compared_result = new_game.compare(guess)
  puts compared_result
end
