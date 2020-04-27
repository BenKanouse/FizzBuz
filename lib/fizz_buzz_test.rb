require 'simplecov'
SimpleCov.start

require "minitest/autorun"
require_relative "fizz_buzz.rb"

class FizzBuzzTest < Minitest::Test
  def test_first_15
    {
      1 => 1,
      2 => 2,
      3 => 'Fizz',
      4 => 4,
      5 => 'Buzz',
      6 => 'Fizz',
      7 => 7,
      8 => 8,
      9 => 'Fizz',
      10 => 'Buzz',
      11 => 11,
      12 => 'Fizz',
      13 => 'Fizz',
      14 => 14,
      15 => 'FizzBuzz',
      30 => 'FizzBuzz',
      300 => 'FizzBuzz',
      333333333 => 'Fizz',
    }.each do |input, output|
      assert_equal(output, FizzBuzz.run(input))
    end
  end

  def test_fizz_if_the_number_has_a_3
    {
      30 => 'FizzBuzz',
      31 => 'Fizz',
      32 => 'Fizz',
      33 => 'Fizz',
      34 => 'Fizz',
      35 => 'FizzBuzz',
      36 => 'Fizz',
      37 => 'Fizz',
      38 => 'Fizz',
      39 => 'Fizz',
      40 => 'Buzz',
    }.each do |input, output|
      assert_equal(output, FizzBuzz.run(input), "Failure FizBuzzing #{input}")
    end
  end

  def test_buzz_if_the_number_has_a_5
    {
      50 => 'Buzz',
      51 => 'FizzBuzz',
      52 => 'Buzz',
      53 => 'FizzBuzz',
      54 => 'FizzBuzz',
      55 => 'Buzz',
      56 => 'Buzz',
      57 => 'FizzBuzz',
      58 => 'Buzz',
      59 => 'Buzz',
      60 => 'FizzBuzz',
    }.each do |input, output|
      assert_equal(output, FizzBuzz.run(input), "Failure FizBuzzing #{input}")
    end
  end
end
