class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  before_save :calories_burned


  def calculate_calories_burned
    self.calories_burned = self.time_in_minutes * self.exercise_type.calories_burned_per_minute
  end

  def self.daily_calories_burned
    total = 0
    calories_today = self.select {|e| e.date == Date.today}
    # calories_today.each do |e|
    #   total += e.calories_burned
    # end

    calories_today.sum &:calories_burned
    # if e.calories_burned.to_i == 0
      #   e.calculate_calories_burned
      # end
    #   if
    #     e.date.today == Date.today
    #     total += e.calories_burned.to_f
    #   end
    # end
    # total
  end


end
