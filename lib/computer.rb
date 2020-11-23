# frozen_string_literal: true

class Computer
  attr_reader :program_counter
  alias instruction_pointer program_counter

  def initialize(stack_size); end

  def set_address(address)
    @program_counter = address
  end
end
