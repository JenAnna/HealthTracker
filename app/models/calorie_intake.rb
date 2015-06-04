class CalorieIntake < ActiveRecord::Base

  def self.calories_today
    total = 0
    self.select do |e|
      if e.date.day == Time.now.day && e.date.month == Time.now.month && e.date.year == Time.now.year
        total += e.calories
      end
    end
    total
  end

end
