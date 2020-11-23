# frozen_string_literal: true

require_relative '../../lib/execution_stack'
require_relative '../../lib/commands/push_command'

RSpec.describe PushCommand do
  describe '#run' do
    it 'pushes a value onto the stack' do
      stack = ExecutionStack.new
      expect(PushCommand.new(10).run(stack)).to eq([10])
    end
  end
end
