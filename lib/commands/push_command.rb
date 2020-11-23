# frozen_string_literal: true

class PushCommand
  def initialize(value)
    @value = value
  end

  def run(stack)
    stack.push(@value)
    stack.program_counter += 1
  end

  def to_s
    "PUSH #{@value}"
  end
end
