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

```ruby
>>> calendar = Mcal::Calendar.new(2013)
>>> calendar.monthly(4)
    [[nil,  1,  2,   3,   4,   5,   6],
     [  7,  8,  9,  10,  11,  12,  13],
     [ 14, 15, 16,  17,  18,  19,  20],
     [ 21, 22, 23,  24,  25,  26,  27],
     [ 28, 29, 30, nil, nil, nil, nil]]
```

`#monthly` also takes a block argument that receives the `Date` object in case you want to do something special:

```ruby
>>> calendar = Mcal::Calendar.new(2013)
>>> holidays = [
      Date.new(2013, 12, 24),
      Date.new(2013, 12, 25)
    ]
    dec = 12
>>> calendar.monthly(dec) { |d| holidays.include?(d) ? 'H' : d.mday }.must_equal [
    [[  1,  2,   3,   4,   5,   6,   7],
     [  8,  9,  10,  11,  12,  13,  14],
     [ 15, 16,  17,  18,  19,  20,  21],
     [ 22, 23, 'H', 'H',  26,  27,  28],
     [ 29, 30,  31, nil, nil, nil, nil]]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
