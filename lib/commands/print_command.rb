# frozen_string_literal: true

class PrintCommand
  def run(stack)
    puts stack.pop
  end

  def to_s
    "PRINT"
  end
end
