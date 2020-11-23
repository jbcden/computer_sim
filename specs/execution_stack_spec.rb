# frozen_string_literal: true

require_relative '../lib/execution_stack'

class DummyCommand
  def run(_stack)
    puts "dummy command"
  end
end

RSpec.describe ExecutionStack do
  describe '#execute' do
    it 'executes the command at the current program counter' do
      stack = ExecutionStack.new(10)

      stack.set_address(0)
      stack.insert(DummyCommand.new)
      stack.set_address(0)

      expect do
        stack.execute
      end.to output("dummy command\n").to_stdout
    end
  end
end
