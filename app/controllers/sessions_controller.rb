class SessionsController < ApplicationController

  def new
    @user = User.new
    @users = User.all
    @user_id = params[:user_id]
  end
end
