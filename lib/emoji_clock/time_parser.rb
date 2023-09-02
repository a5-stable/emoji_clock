class TimeParser
  def self.parse(*args)
    if args.size > 1
      Time.new(*args)
    else
      case args.first
      when Time
        args.first
      when String
        Time.new(args.first)
      when Integer
        Time.at(args.first)
      end
    end
  end
end
