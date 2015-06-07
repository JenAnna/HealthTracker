class DashboardController < ApplicationController

  def index
    @calorie_intakes = CalorieIntake.where(params[:user_id]).all
    @pedometer_readings = PedometerReading.where(params[:user_id]).all
    @exercises = Exercise.where(params[:user_id]).all
    @user_id = params[:user_id]
  end

end
