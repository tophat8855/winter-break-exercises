require 'spec_helper'
require 'palindrome_checker'

describe PalindromeChecker do
  it "'switchy' returns the reverse of the given string" do
    flip_this = PalindromeChecker.new("hello")
    result = flip_this.switchy

    expect(result).to eq("olleh")
  end

  it "checks for palindrome-ness and tells you if not" do
    pali = PalindromeChecker.new("goodbye")
    result = pali.check_palindrome

    expect(result).to include ("is NOT a palindrome")
  end

  it "checks for palindrome-ness and tells you if so" do
    pali = PalindromeChecker.new("hannah")
    result = pali.check_palindrome

    expect(result).to include ("is a palindrome")
  end
end
