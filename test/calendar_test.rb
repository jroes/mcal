require 'minitest/autorun'
require 'mcal'

describe Mcal::Calendar do
  it "returns Sun-Sat weeks" do
    calendar = Mcal::Calendar.new(2013)
    jan = 1 # First month of the year
    
    calendar.monthly(jan).must_equal [
      [nil, nil, 1, 2, 3, 4, 5],
      [6, 7, 8, 9, 10, 11, 12],
      [13, 14, 15, 16, 17, 18, 19],
      [20, 21, 22, 23, 24, 25, 26],
      [27, 28, 29, 30, 31, nil, nil]
    ]
  end

  it "shows custom daily output" do
    calendar = Mcal::Calendar.new(2013)
    holidays = [
      Date.new(2013, 12, 24),
      Date.new(2013, 12, 25)
    ]
    dec = 12

    calendar.monthly(dec) { |d| holidays.include?(d) ? 'H' : d.mday }.must_equal [
      [1, 2, 3, 4, 5, 6, 7],
      [8, 9, 10, 11, 12, 13, 14],
      [15, 16, 17, 18, 19, 20, 21],
      [22, 23, 'H', 'H', 26, 27, 28],
      [29, 30, 31, nil, nil, nil, nil]
    ]
  end
end
