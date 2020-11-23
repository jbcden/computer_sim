# frozen_string_literal: true

require_relative '../lib/computer'

RSpec.describe Computer do
  describe '#set_address' do
    it 'sets the address in the stack' do
      computer = Computer.new(100)

      computer.set_address(22)

      expect(computer.program_counter).to eq(22)
    end
  end
end
