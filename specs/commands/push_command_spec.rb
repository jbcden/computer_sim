# frozen_string_literal: true

require_relative '../../lib/computer'
require_relative '../../lib/commands/push_command'

RSpec.describe PushCommand do
  describe '#run' do
    it 'pushes a value onto the stack' do
      expect(PushCommand.new(10).run([])).to eq([10])
    end
  end
end
