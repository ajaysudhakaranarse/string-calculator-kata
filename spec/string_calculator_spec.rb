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

    conext 'Input string size' do
      it 'return 0 for empty string' do
        result = string_calculator_obj.add('')
        expect(result).to eq(0)
      end
    end

    context 'Input string with no > 1000' do
      it 'ignores number greater that 1000' do
        result = string_calculator_obj.add('1, 2, 1001, 1002, 3')
        expect(result).to eq(6)
      end
    end

    context "Support \n in string" do
      it 'return sum of valid string' do
        result = string_calculator_obj.add("1\n2,3")
        expect(result).to eq(6)
      end
    end
  end
end
