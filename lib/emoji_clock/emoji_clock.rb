# frozen_string_literal: true

class EmojiClock
  attr_accessor :hour, :minute
  extend ClockVariety

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def fetch_emoji
    h = ((hour % 12).nonzero? || 12) - 1
    m = minute >= 30 ? 12 : 0

    sprintf("%c", EMOJI_CLOCK_CODE_POINT + h + m)
  end

  def fetch_exact_emoji
    fetch_emoji if minute == 0 || minute == 30
  end

  def self.at(*args, exact: false)
    time = parse_to_time(*args)
    clock = new(time.hour, time.min)

    exact ? clock.fetch_exact_emoji : clock.fetch_emoji
  end

  def self.parse_to_time(*args)
    if args.size > 1
      Time.new(*args)
    else
      case args.first
      when Time
        args.first
      when String
        Time.parse(args.first)
      when Integer
        Time.at(args.first)
      end
    end
  end
end
