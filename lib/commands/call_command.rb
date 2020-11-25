# frozen_string_literal: true

class CallCommand
  def initialize(new_address)
    @new_address = new_address.to_i
  end

  def run(context)
    context.pc = @new_address

    context
  end
end
