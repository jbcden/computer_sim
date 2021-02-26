# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/multiply_command'
require_relative '../../lib/invalid_command_argument_error'

RSpec.describe MultiplyCommand do
  describe '#run' do
    it 'sets the program counter to the specified address' do
      context = Context.new(stack: [3, 5], pc: 0)

      new_context = MultiplyCommand.new.run(context)

      expect(new_context.stack).to eq([15])
    end

    it 'raises an error when one of the arguments is not a number' do
      context = Context.new(stack: [3, 'i'], pc: 0)

      expect do
        MultiplyCommand.new.run(context)
      end.to raise_error(InvalidCommandArgumentError)
    end

    it 'raises an error when one of the arguments is nil' do
      context = Context.new(stack: [3, nil], pc: 0)

      expect do
        MultiplyCommand.new.run(context)
      end.to raise_error(InvalidCommandArgumentError)
    end
  end
end
