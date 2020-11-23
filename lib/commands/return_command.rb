# frozen_string_literal: true

class ReturnCommand
  def run(context)
    address = context.stack.pop

    context.pc = address

    context
  end

  def to_s
    "RET"
  end
end
