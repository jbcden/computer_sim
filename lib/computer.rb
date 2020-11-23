# frozen_string_literal: true

require_relative './execution_stack'

class Computer
  def initialize(stack_size)
    @stack = ExecutionStack.new(stack_size)
  end

  def set_address(address)
    @stack.set_address(address)

    self
  end

  # NOTE: currently all commands have at most 1 argument, we could
  # update the arg argument to handle multiple arguments if necessary.
  def insert(command_name, arg = nil)
    command = [command_name, arg].join(" ").strip

    @stack.insert(command)

    self
  end

  def current_instruction
    @stack[program_counter]
  end

  def program_counter
    @stack.program_counter
  end

  def execute
    #@stack.map do |command_str|
    #  command, arg = command_str.split(" ")
    #  CommandBuilder.build(command, arg)
    #end

    #loop do
    #  @stack[@program_counter].run(@stack)
    #end
  end
end
