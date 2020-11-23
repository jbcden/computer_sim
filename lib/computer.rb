# frozen_string_literal: true

class Computer
  attr_reader :program_counter
  alias instruction_pointer program_counter

  def initialize(stack_size)
    @stack = Array.new(stack_size)
  end

  def set_address(address)
    @program_counter = address
  end

  # NOTE: currently all commands have at most 1 argument, we could
  # update the arg argument to handle multiple arguments if necessary.
  def insert(command_name, arg = nil)
    command = [command_name, arg].join(" ").strip

    @stack[@program_counter] = command
    @program_counter += 1

    self
  end

  def current_instruction
    @stack[@program_counter]
  end
end
