class DashboardController < ApplicationController

  def index
    @calorie_intakes = CalorieIntake.all
    @pedometer_readings = PedometerReading.all
    @exercises = Exercise.all
    @calorie_intake = CalorieIntake.new
    @pedometer_reading = PedometerReading.new
    @exercise = Exercise.new
    @weigh_in = WeighIn.new
  end

end
