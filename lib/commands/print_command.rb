# frozen_string_literal: true

class PrintCommand
  def run(context)
    puts context.stack.pop

    context.pc += 1

    context
  end

  def to_s
    "PRINT"
  end
end
