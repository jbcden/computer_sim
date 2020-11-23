# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/return_command'

RSpec.describe ReturnCommand do
  describe '#run' do
    it 'updates the program counter based on a value from the stack' do
      context = Context.new(stack: [20], pc: 0)

      new_context = ReturnCommand.new.run(context)

      expect(new_context.pc).to eq(20)
    end
  end
end
