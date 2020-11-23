# frozen_string_literal: true

require_relative '../../lib/context'
require_relative '../../lib/commands/print_command'

RSpec.describe PrintCommand do
  describe '#run' do
    it 'prints a value from the stack' do
      expect do
        context = Context.new(stack: [10], pc: 0)
        PrintCommand.new.run(context)
      end.to output("10\n").to_stdout
    end
  end
end
