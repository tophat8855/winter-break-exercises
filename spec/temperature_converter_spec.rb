require 'spec_helper'
require 'temperature_converter'

describe TemperatureConverter do
  it 'converts celsius to fahrenheit' do
    fahrenheit = TemperatureConverter.to_fahrenheit(100)

    expect(fahrenheit).to eq(212)
  end

  it 'converts fahrenheit to celseius' do
    celsius = TemperatureConverter.to_celsius(212)

    expect(celsius).to eq(100)
  end
end
