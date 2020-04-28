class ApplicationController < ActionController::Base

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authorize
    if current_user.nil? || current_user.admin != true
      redirect_to root_path, alert: "Não autorizado."
    end
  end

end