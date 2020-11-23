# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/multiply_command'

RSpec.describe MultiplyCommand do
  describe '#run' do
    it 'sets the program counter to the specified address' do
      context = Context.new(stack: [3, 5], pc: 0)

      new_context = MultiplyCommand.new.run(context)

      expect(new_context.stack).to eq([15])
    end
  end
end
