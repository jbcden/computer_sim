# frozen_string_literal: true

require_relative './commands/invalid_command'
require_relative './commands/print_command'
require_relative './commands/push_command'
require_relative './commands/stop_command'

class CommandBuilder
  def self.build(command, arg)
    case command
    when 'PRINT'
      PrintCommand.new
    when 'PUSH'
      # TODO: we should consider what values are valid for arg here. Are
      # negative numbers ok? Are strings? What about `nil`?
      PushCommand.new(arg)
    when 'STOP'
      StopCommand.new
    else
      InvalidCommand.new(command, arg)
    end
  end
end
