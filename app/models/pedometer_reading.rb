class PedometerReading < ActiveRecord::Base
  validates :date, presence: true
  validates :steps, presence: true
  before_save :calories

  def calories
    self.calories_burned = self.steps/20
  end

  def miles
    self.steps/2000
  end

  def self.daily_steps
    total = 0
    self.select do |e|
      if e.date == Date.today
        total += e.steps
      end
    end
    total
  end
end
