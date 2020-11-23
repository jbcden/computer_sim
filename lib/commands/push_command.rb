# frozen_string_literal: true

class PushCommand
  def initialize(value)
    @value = value
  end

  def run(context)
    context.stack.push(@value)

    context.pc += 1

    context
  end

  def to_s
    "PUSH #{@value}"
  end
end
