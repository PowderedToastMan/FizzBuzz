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
    "FizzBuzz" if n % 15 == 0
    "Fizz"     if n % 3 == 0
    "Buzz"     if n % 5 == 0
    n
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
