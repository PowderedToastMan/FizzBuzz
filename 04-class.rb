#! /usr/bin/env ruby

require 'json'

class Fizzbuzz
  def initialize(max)
    @fizzbuzz = 1.upto(max).map do |n|
      if n%15 == 0
        "FizzBuzz"
      elsif n%3 == 0
        "Fizz"
      elsif n%5 == 0
        "Buzz"
      else
        n
      end
    end
  end

  def as_string
    @fizzbuzz.join ","
  end

  def as_json
    @fizzbuzz.to_json
  end

  def as_html
    ["<ul>",@fizzbuzz.map {|v| "\t<li>#{v}</li>"},"</ul>"]
  end
end

fb = Fizzbuzz.new(30)
puts fb.as_string
puts fb.as_json
puts fb.as_html
