class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user

  def current_user
    if cookies[:auth_token]
      @current_user ||= User.find_by_auth_token(cookies[:auth_token])
    end
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end

  def require_login
    redirect_to home_path unless current_user
  end
end
