class Array
  def say_hello
    "HEY THERE, I'M AN ARRAY! SOMEONE FUCKED WITH MY CODE :("
  end

  def count_evens
    number_of_evens = 0
    self.each do |number|
      number_of_evens += 1 if number % 2 == 0
    end
    "HI FRIEND, I AM ARRAY.  I HAVE #{number_of_evens} EVEN NUMBERS.  PRETTY AWESOME YES?"
  end
end
