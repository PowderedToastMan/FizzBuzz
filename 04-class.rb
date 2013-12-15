#! /usr/bin/env ruby

require 'json'

class Fizzbuzz
  def initialize(max)
    @max = max
  end

  # returns string
  def string
    array.join ","
  end

  # returns json hash
  def json
    JSON.pretty_generate(hash)
  end

  private
  def calc(n)
    return "FizzBuzz" if n % 15 == 0
    return "Fizz"     if n % 3 == 0
    return "Buzz"     if n % 5 == 0
    return n
  end

  def array
    1.upto(@max).map do |n|
      calc(n)
    end
  end

  def hash
    h = Hash.new
    1.upto(@max).map do |n|
      h[n] = calc(n)
    end
    h
  end
end

fb = Fizzbuzz.new(30)
puts fb.json
