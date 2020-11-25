# frozen_string_literal: true

class MultiplyCommand
  def run(context)
    multiplier = context.stack.pop.to_i
    multiplicand = context.stack.pop.to_i

    context.stack.push(multiplier * multiplicand)
    context.pc += 1

    context
  end
end
