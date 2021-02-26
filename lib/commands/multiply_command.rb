# frozen_string_literal: true

require_relative '../invalid_command_argument_error'

class MultiplyCommand
  def run(context)
    multiplier = Integer(context.stack.pop)
    multiplicand = Integer(context.stack.pop)

    context.stack.push(multiplier * multiplicand)
    context.pc += 1

    context
  rescue TypeError, ArgumentError
    raise InvalidCommandArgumentError
  end
end
