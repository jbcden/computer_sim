# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/push_command'

RSpec.describe PushCommand do
  describe '#run' do
    it 'pushes a value onto the stack' do
      context = Context.new(stack: [], pc: 0)

      new_context = PushCommand.new(10).run(context)

      expect(new_context.stack).to eq([10])
    end
  end
end
