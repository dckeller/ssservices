class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permited_parameters, if: :devise_controller?
  skip_before_action :verify_authenticity_token, only: :create
  before_action :require_login

  protected

  def after_sign_in_path_for(resource)
  	redirect_to root_path
  end

  def configure_permited_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :remember_me])
	end 

end
