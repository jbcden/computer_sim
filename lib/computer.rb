# frozen_string_literal: true

require_relative './command_builder'
require_relative './context'
require_relative './commands/null_command.rb'

# Things to improve:
# 1. stack grows and shrinks
# 2. nothing stops data part of stack from going into the program space
class Computer
  attr_reader :program_counter, :stack
  alias instruction_pointer program_counter

  def initialize(stack_size)
    @stack = Array.new(stack_size)
  end

  def set_address(address)
    @program_counter = address

    self
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

  def execute
    @stack = @stack.map do |command_str|
      next NullCommand.new unless command_str

      command, arg = command_str.split(" ")
      CommandBuilder.build(command, arg)
    end

    loop do
      context = Context.new(stack: @stack, pc: @program_counter)

      new_context = @stack[@program_counter].run(context)

      @stack = new_context.stack
      @program_counter = new_context.pc
    end
  end
end
