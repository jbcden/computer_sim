# frozen_string_literal: true

class PushCommand
  def initialize(value)
    @value = value
  end

  def run(stack)
    stack.push(@value)
  end

  def to_s
    "PUSH #{@value}"
  end
end
