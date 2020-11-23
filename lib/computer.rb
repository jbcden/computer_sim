# frozen_string_literal: true

class Computer
  attr_reader :program_counter
  alias instruction_pointer program_counter

  def initialize(stack_size); end

  def set_address(address)
    @program_counter = address
  end

  # NOTE: currently all commands have at most 1 argument, we could
  # update the arg argument to handle multiple arguments if necessary.
  def insert(command_name, arg = nil); end

  def current_instruction
    "STOP"
  end
end
