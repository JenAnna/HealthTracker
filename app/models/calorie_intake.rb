class CalorieIntake < ActiveRecord::Base
  validates :date, presence: true
  validates :calories, presence: true 

  def self.calories_today
    total = 0
    self.select do |e|
      if e.date.today == Date.today
        total += e.calories
      end
    end
    total
  end

end
