# frozen_string_literal: true

class EmojiClockFetcher
  EMOJI_CLOCK_CODE_POINT = 0x1F550

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def fetch
    code_point = EMOJI_CLOCK_CODE_POINT + hour_offset + minute_offset
    [code_point].pack('U')
  end

  def exact_fetch
    fetch if [0, 30].include?(@minute)
  end

  private

  def hour_offset
    h = @minute >= 45 ? @hour + 1 : @hour
    ((h % 12).nonzero? || 12) - 1
  end

  def minute_offset
    @minute >= 15 && @minute < 45 ? 12 : 0
  end

end
