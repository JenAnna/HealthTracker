class DashboardController < ApplicationController

  def index
    @calorie_intakes = CalorieIntake.all
    @pedometer_readings = PedometerReading.all
    @exercises = Exercise.all
    @calorie_intake = CalorieIntake.new
    @pedometer_reading = PedometerReading.new
    @exercise = Exercise.new
    @weigh_in = WeighIn.new
    @calorie_intakes = CalorieIntake.find(params[:user_id])
    @pedometer_readings = PedometerReading.find(params[:user_id])
    @exercises = Exercise.find(params[:user_id])
  end

end
