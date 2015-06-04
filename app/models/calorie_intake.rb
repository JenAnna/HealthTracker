class CalorieIntake < ActiveRecord::Base
  def calorie_total
    self.calories
  end

  def input_date
    self.date
  end
end
