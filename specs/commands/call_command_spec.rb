# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/call_command'

RSpec.describe CallCommand do
  describe '#run' do
    it 'sets the program counter to the specified address' do
      context = Context.new(stack: [], pc: 0)

      new_context = CallCommand.new(10).run(context)

      expect(new_context.pc).to eq(10)
    end
  end
end
