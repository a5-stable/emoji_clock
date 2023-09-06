# EmojiClock

Welcome to EmojiClock!
This is a cute little gem that will display the current time in (the nearest) emoji clock format.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add emoji_clock

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install emoji_clock

## Usage

You can get the nearest emoji clock by calling the `EmojiClock.now` method.
```
EmojiClock.now

# => "🕧"
```

You can also get the emoji clock for a specific time by calling the `EmojiClock.at` method.
```
time = Time.new(2021, 1, 1, 12, 30)
EmojiClock.at(time)

# => "🕧"
```

Since there are no clock emojis for times other than 00 minutes and 30 minutes, EmojiClock will return the nearest emoji clock for such times.
```
time = Time.new(2021, 1, 1, 12, 10)
EmojiClock.at(time)

# => "🕛"

time = Time.new(2021, 1, 1, 12, 50)
EmojiClock.at(time)

# => "🕐"
```

If you want to get emoji only when the time is exactly on the hour or half hour, you can pass `:exact` as an option.
EmojiClock will return `nil` if the time is not exactly on the hour or half hour.
```
time = Time.new(2021, 1, 1, 12, 10)
EmojiClock.at(time, exact: true)

# => nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/emoji_clock. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/emoji_clock/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EmojiClock project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/emoji_clock/blob/main/CODE_OF_CONDUCT.md).
