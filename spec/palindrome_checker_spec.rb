require 'spec_helper'
require 'palindrome_checker'

describe PalindromeChecker do
  it "'reverse' returns the reverse of the given string" do
    flip_this = PalindromeChecker.new("hello")
    result = flip_this.switchy

    expect(result).to eq("olleh")
  end
end
