# frozen_string_literal: true

class StopCommand
  def run(_context)
    exit 0
  end

  def to_s
    "STOP"
  end
end
