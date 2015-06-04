class PedometerReading < ActiveRecord::Base
  def calories
    self.steps/20
  end

  def miles
    self.steps/2000
  end

  def self.daily_steps
    total = 0
    self.select do |e|
      if e.date.day == Time.now.day && e.date.month == Time.now.month && e.date.year == Time.now.year
        total += e.steps
      end
    end
    total
  end
end
