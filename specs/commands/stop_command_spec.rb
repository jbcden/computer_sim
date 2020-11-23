# frozen_string_literal: true

require_relative '../../lib/computer'
require_relative '../../lib/commands/stop_command'

RSpec.describe StopCommand do
  describe '#run' do
    it 'halts program execution' do
      context = Context.new(stack: [], pc: 0)
      expect(StopCommand.new.run(context)).to receive(:exit)
    end
  end
end
