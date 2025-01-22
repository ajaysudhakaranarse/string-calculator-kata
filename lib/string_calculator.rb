# frozen_string_literal: true

class StringCalculator
  attr_accessor :delimiter

  def initialize(delimiter = ',')
    delimiter
  end

  def add(numbers)
    numbers = parse_numbers(numbers)
    numbers.reject { |no| no > 1000 }.sum
  end

  def parse_numbers(numbers)
    numbers = numbers.split(delimiter)
    numbers.map(&:to_i)
  end
end
