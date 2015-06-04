class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  before_save :calculate_calories_burned

  def calculate_calories_burned
    self.calories_burned = self.time_in_minutes * self.exercise_type.calories_burned_per_minute
  end

end
