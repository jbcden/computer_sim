# frozen_string_literal: true

require_relative '../lib/computer'

def main
  # Create new computer with a stack of 100 addresses
  computer = Computer.new(100)

  computer.set_address(1).insert("STOP")

  # Ensure an "empty" instruction is "executed"
  computer.set_address(0).execute()
end

main()

# Expected output:
# NOTHING
