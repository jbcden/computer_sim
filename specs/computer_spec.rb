# frozen_string_literal: true

require_relative '../lib/computer'

RSpec.describe Computer do
  describe '#set_address' do
    # TODO: should we add a check that the address
    # is within the stack?
    it 'sets the address in the stack' do
      computer = Computer.new(30)

      computer.set_address(22)

      expect(computer.program_counter).to eq(22)
    end
  end

  describe '#insert' do
    it 'increments the program counter' do
      computer = Computer.new(10)

      computer.set_address(0)
      computer.insert("PUSH", 10).insert("STOP")

      expect(computer.program_counter).to eq(2)
    end

    it 'pushes a command onto the stack' do
      computer = Computer.new(10)

      computer.set_address(0)
      computer.insert("STOP")

      computer.set_address(0)
      expect(computer.current_instruction).to eq("STOP")
    end

    it 'can push a command with an argument onto the stack' do
      computer = Computer.new(10)

      computer.set_address(0)
      computer.insert("PUSH", 10)

      computer.set_address(0)
      expect(computer.current_instruction).to eq("PUSH 10")
    end

    it 'can be chained' do
      computer = Computer.new(10)

      computer.set_address(0)
      computer.insert("PUSH", 10).insert("STOP")

      computer.set_address(0)
      expect(computer.current_instruction).to eq("PUSH 10")
      computer.set_address(1)
      expect(computer.current_instruction).to eq("STOP")
    end
  end
end
