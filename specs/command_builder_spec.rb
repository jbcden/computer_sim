# frozen_string_literal: true

require_relative '../lib/command_builder'
require_relative '../lib/commands/stop_command'
require_relative '../lib/commands/push_command'
require_relative '../lib/commands/invalid_command'

RSpec.describe CommandBuilder do
  describe '.build' do
    context 'when the command is valid' do
      it 'constructs the appropriate command object' do
        command = CommandBuilder.build("STOP", nil)

        expect(command).to be_a(StopCommand)
      end

      it 'also handles arguments' do
        command = CommandBuilder.build("PUSH", 10)

        expect(command).to be_a(PushCommand)
      end
    end

    context 'when the command is invalid' do
      # TODO: we should verify what the behavior is for this case. Should this
      # raise an exception or should it be treated as a no-op. Changing this
      # later should be straightforward so just choosing one of them for now.
      it 'constructs no-op command' do
        command = CommandBuilder.build("INVALID", 10)

        expect(command).to be_a(InvalidCommand)
      end
    end
  end
end
