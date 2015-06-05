class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  before_save :calories_burned


  def calculate_calories_burned
    self.calories_burned = self.time_in_minutes * self.exercise_type.calories_burned_per_minute
  end

  def self.daily_calories_burned
    calories_today = self.select { |e| e.date == Date.today }
    calories_today
  end


end
