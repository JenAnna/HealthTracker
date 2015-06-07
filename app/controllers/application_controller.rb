class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_action :authenticate

  private def authenticate
    api_key_request = request.headers['X-Security-Key']
    key = User.where(security_key: api_key_request) if api_key_request

    unless key
      head status: :unauthorized
      return false
    end
  end

end
