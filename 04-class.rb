#! /usr/bin/env ruby

require 'json'

class Fizzbuzz
  def initialize(max)
    @max = max
  end

  # returns an array of strings
  def string
    1.upto(@max).map do |n|
      calc(n)
    end
  end

  # returns json hash
  def json
    JSON.generate(hash(@max))
  end


  private
  def calc(n)
    if (n % 15 == 0)
      "FizzBuzz"
    elsif (n % 3 == 0)
      "Fizz"
    elsif (n % 5 == 0)
      "Buzz"
    else
      n
    end
  end

  def hash(n)
    h = Hash.new
    1.upto(@max).map do |n|
      h[n] = calc(n)
    end
    h
  end
end

fb = Fizzbuzz.new(30)
puts fb.json
