# frozen_string_literal: true

class EmojiClock
  attr_accessor :exact
  def initialize
  end

  def self.at(*args)
    time = parse_to_time(*args)
    a = (time.hour * 2 + (time.min / 30)) % 24
    sprintf("%c", 128336 + a)
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
