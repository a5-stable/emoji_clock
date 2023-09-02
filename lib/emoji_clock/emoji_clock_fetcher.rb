# frozen_string_literal: true

class EmojiClockFetcher
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def fetch
    h = ((@hour % 12).nonzero? || 12) - 1
    m = @minute >= 30 ? 12 : 0
    code_point = 0x1F550 + h + m

    [code_point].pack('U')
  end

  def exact_fetch
    fetch if [0, 30].include?(@minute)
  end
end
