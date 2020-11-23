# frozen_string_literal: true

require_relative '../../lib/computer'
require_relative '../../lib/commands/print_command'

RSpec.describe PrintCommand do
  describe '#run' do
    it 'prints a value from the stack' do
      expect do
        PrintCommand.new.run([10])
      end.to output("10\n").to_stdout
    end
  end
end
