require 'spec_helper'
require 'guessing_game'

describe GuessingGame do
  it 'returns "higher" if the guess is lower than the secret number' do
    game = GuessingGame.new(30)
    guess = 10
    result = game.compare(guess)

    expect(result).to eq("higher")
  end

  it 'returns "lower" if the guess is higher than the secret number' do
    game = GuessingGame.new(30)
    guess = 50
    result = game.compare(guess)

    expect(result).to eq("lower")
  end

  it 'returns "You got it" if the guess is the same as the secret number' do
    game = GuessingGame.new(30)
    guess = 30
    result = game.compare(guess)

    expect(result).to include("You got it")
  end

  it 'returns the correct number of tries' do
    game = GuessingGame.new(30)
    guess = 40
    game.compare(guess)
    guess2 = 20
    game.compare(guess2)
    guess3 = 30
    result = game.compare(guess3)

    expect(result).to include("3")
  end
end
