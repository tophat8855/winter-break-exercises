class PrimeNumbers
  def self.prime_printer(max)
    array_to_check_for_primes = (2..max).to_a
    primes = []
    while (!array_to_check_for_primes.empty?)
      prime = array_to_check_for_primes.first
      primes << prime
      array_to_check_for_primes.delete_if { |number| (number % prime == 0) }
    end
    primes
  end
end
