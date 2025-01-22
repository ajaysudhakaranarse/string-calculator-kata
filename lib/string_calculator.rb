# frozen_string_literal: true

require 'exception_handler'

class StringCalculator
  include ExceptionHandler
  attr_accessor :delimiter

  def initialize(delimiter = ',')
    @delimiter = delimiter
  end

  def add(numbers)
    numbers = parse_and_sanitize_numbers(numbers)
    numbers.reject { |no| no > 1000 }.sum
  end

  def parse_and_sanitize_numbers(numbers)
    validate_numbers(numbers)
    parse_numbers(numbers)
  end

  def validate_numbers(numbers)
    return if numbers.empty?

    pattern = /\d+#{Regexp.escape(delimiter)}?\d+/

    return if numbers.match(pattern)

    raise ExceptionHandler::InvalidNumberString, 'Invalid String'
  end

  def parse_numbers(numbers)
    numbers = numbers.split(/#{Regexp.escape(delimiter)}|\n/)
    numbers.map(&:to_i)
  end
end
