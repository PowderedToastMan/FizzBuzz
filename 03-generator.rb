#! /usr/bin/env ruby

def fizzbuzz(max)
  1.upto(max).map do |n|
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

puts fizzbuzz(30)
