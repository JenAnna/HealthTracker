class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  before_save :calories_burned

  def calculate_calories_burned
    self.calories_burned = self.time_in_minutes * self.exercise_type.calories_burned_per_minute
  end

  def self.daily_calories_burned
    total = 0
    self.select do |e|
      if e.calories_burned.to_i == 0
        e.calculate_calories_burned
      end
      if
        e.date.day == Time.now.day && e.date.month == Time.now.month && e.date.year == Time.now.year
        total += e.calories_burned.to_f
      end
    end
    total
  end


end
