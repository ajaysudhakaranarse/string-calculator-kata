# frozen_string_literal: true

require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
    describe '#add' do
        let(:string_calculator_obj) { StringCalculator.new }

        it 'return sum of numbers' do
            result = string_calculator_obj.add('1, 5')
            expect(result).to eq(6)
        end
    end
end
