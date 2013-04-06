# mcal

Generate a simply monthly calendar.

## Installation

Add this line to your application's Gemfile:

    gem 'mcal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mcal

## Usage

It's a really simple library. You give it a year and a month, and it'll give you back a nested array of weeks in that month. It orders the days like a standard calendar; Sunday - Saturday.

TODO

```ruby
calendar = Calendar.new(2013)
calendar.monthly(2)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
