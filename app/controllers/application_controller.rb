class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :username
  end

  protected

  def admin?
  	current_user && current_user.admin
  end
  def verify_is_admin
  	(flash[:notice] = "Ah ah ah, You didn't say the magic word"; redirect_to(root_path)) unless admin?
  end
  helper_method :admin?, :authenticate
end
