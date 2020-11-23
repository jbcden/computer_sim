# frozen_string_literal: true

class PrintCommand
  def run(stack)
    puts stack.pop
    stack.program_counter += 1
  end

  def to_s
    "PRINT"
  end
end
