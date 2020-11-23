# frozen_string_literal: true

class ExecutionStack < SimpleDelegator
  attr_accessor :program_counter
  alias instruction_pointer program_counter

  def initialize(stack_size = 0)
    @program_counter = 0

    super(Array.new(stack_size))
  end

  def set_address(address)
    @program_counter = address

    self
  end

  def insert(command)
    self[@program_counter] = command

    @program_counter += 1

    self
  end

  def execute
    self[@program_counter].run(self)
  end
end
