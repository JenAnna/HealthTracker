class DashboardController < ApplicationController

  def index
    @calorie_intakes = CalorieIntake.all
    @pedometer_readings = PedometerReading.all
    @exercises = Exercise.all
  end

end
