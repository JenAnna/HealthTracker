class DashboardController < ApplicationController

  def index
    @calorie_intake = CalorieIntake.new
    @exercise = Exercise.new
    @pedometer_reading = PedometerReading.new
    @weigh_in = WeighIn.new
    @calorie_intakes = CalorieIntake.where(user_id: params[:user_id]).all
    @pedometer_readings = PedometerReading.where(user_id: params[:user_id]).all
    @exercises = Exercise.where(user_id: params[:user_id]).all
    @user_id = params[:user_id]
  end

end
