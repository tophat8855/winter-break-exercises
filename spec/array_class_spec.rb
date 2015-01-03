require 'spec_helper'
require 'array_class'

describe Array do
  it 'makes arrays say hello' do
    nums = [1,2,3]
    array_talk = nums.say_hello

    expect(array_talk).to eq("HEY THERE, I'M AN ARRAY! SOMEONE FUCKED WITH MY CODE :(")
  end

  it 'counts the evens in an array and has a conversation' do
    nums = [2,5,9,15,22,99]
    array_talk = nums.count_evens

    expect(array_talk).to eq("HI FRIEND, I AM ARRAY.  I HAVE 2 EVEN NUMBERS.  PRETTY AWESOME YES?")
  end
end
