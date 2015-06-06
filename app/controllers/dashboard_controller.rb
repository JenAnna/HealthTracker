class DashboardController < ApplicationController

  def index
    @calorie_intakes = CalorieIntake.find(params[:user_id])
    @pedometer_readings = PedometerReading.find(params[:user_id])
    @exercises = Exercise.find(params[:user_id])
  end

end
