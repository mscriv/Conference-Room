class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_staff
    if current_user.role == 'Staff'
      return true
    else
      redirect_to root_path
      end
    end

  def authorize
    redirect_to signin_path, alert: "Not authorized" if current_user.nil?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user, :require_staff
end
