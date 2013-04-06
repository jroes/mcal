require 'date'

module Mcal
  class Calendar
    def initialize(year)
      @year = year
    end

    def monthly(month, &block)
      block ||= lambda { |day| day.mday }
      by_day = Date.new(@year, month, -1)
      week = Array.new(7, nil)
      weeks = []
      Date.new(@year, month).step(by_day).each do |day|
        if day.sunday?
          week[0] = block.call(day)
        else
          week[day.cwday] = block.call(day)
        end

        # End the current week and start a new one
        if day.saturday?
          weeks << week
          week = Array.new(7, nil)
        end
      end

      # Add leftover week (if we didn't end exactly on a Saturday)
      weeks << week if week.compact.any?
      weeks
    end
  end
end
