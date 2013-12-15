#! /usr/bin/env ruby

class Fizzbuzz
  def initialize(max)
    @max = max
  end

  def fizzbuzz
    1.upto(@max).map do |n|
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
  end
end

fb = Fizzbuzz.new(30)
puts fb.fizzbuzz
