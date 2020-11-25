# frozen_string_literal: true

class NullCommand
  def run(context)
    context.pc += 1

    context
  end

  def to_s
    "NULL"
  end
end
