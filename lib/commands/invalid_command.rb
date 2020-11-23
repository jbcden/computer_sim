# frozen_string_literal: true

InvalidCommand = Struct.new(:command, :arg) do
  def run(*)
    exit 1
  end

  def to_s
    "Invalid command: \"#{command} #{arg}\""
  end
end
