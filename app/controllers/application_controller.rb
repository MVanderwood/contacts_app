class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current ||= User.find_by(id: session[:id]) if session[:user_id]
  end

  def authenticate_user!
    redirect_to '/' unless current_user
  end
end
