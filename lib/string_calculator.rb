# frozen_string_literal: true

class StringCalculator
    attr_accessor :delimiter

    def initialize(delimiter = ',')
        delimiter = delimiter
    end

    def add(numbers)
        numbers = parse_numbers(numbers)
        numbers.sum
    end

    def parse_numbers(numbers)
        numbers = numbers.split(delimiter)
        numbers.map(&:to_i)
    end
end
