# frozen_string_literal: true

require_relative "emoji_clock/version"
require_relative "emoji_clock/emoji_clock_fetcher"
require_relative "emoji_clock/clock_variety"
require_relative "emoji_clock/time_parser"

class EmojiClock
  attr_reader :hour, :minute
  extend ClockVariety

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def fetch_emoji
    fetcher.fetch
  end

  def fetch_exact_emoji
    fetcher.exact_fetch
  end

  def self.at(*args, exact: false)
    time = TimeParser.parse(*args)
    clock = new(time.hour, time.min)

    exact ? clock.fetch_exact_emoji : clock.fetch_emoji
  end

  def fetcher
    @fetcher ||= EmojiClockFetcher.new(hour, minute)
  end
end
