# frozen_string_literal: true

require_relative '../../lib/computer'
require_relative '../../lib/commands/stop_command'

RSpec.describe StopCommand do
  describe '#run' do
    it 'halts program execution' do
      expect(StopCommand.new.run([])).to receive(:exit)
    end
  end
end
