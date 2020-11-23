# frozen_string_literal: true

require_relative '../../lib/execution_stack'
require_relative '../../lib/commands/print_command'

RSpec.describe PrintCommand do
  describe '#run' do
    it 'prints a value from the stack' do
      expect do
        stack = ExecutionStack.new(1).insert(10)
        PrintCommand.new.run(stack)
      end.to output("10\n").to_stdout
    end
  end
end
