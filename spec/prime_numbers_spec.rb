require 'spec_helper'
require 'prime_numbers'

describe 'prime_numbers' do
  it "prints the prime numbers less than a maximum number" do
    primes = PrimeNumbers.prime_printer(19)

    expect(primes).to eq([2, 3, 5, 7, 11, 13, 17, 19])
  end
end
