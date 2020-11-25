# frozen_string_literal: true

require_relative '../../lib/computer'
require_relative '../../lib/commands/null_command'

RSpec.describe NullCommand do
  describe '#run' do
    it 'returns the stack unmodified' do
      context = Context.new(stack: [10, 22, 40], pc: 44)

      new_context = NullCommand.new.run(context)

      expect(new_context.stack).to eq([10, 22, 40])
      expect(new_context.pc).to eq(45)
    end
  end
end
