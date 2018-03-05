class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permited_parameters, if: :devise_controller?
  skip_before_action :verify_authenticity_token, only: :create
  before_action :create_slots_variable
  before_action :require_login

  protected

  def after_sign_in_path_for(resource)
    profile_path(current_user.id)
  end

  def after_update_path_for(resource)
    profile_path(current_user.id)
  end

  def sign_out_and_redirect(resource)
    root_path
  end

  def create_slots_variable
    if user_signed_in?
      @slots = Slot.where(slot_creator_id: current_user.id)
    end 
  end  

  def configure_permited_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :bus_name, :bus_location, :bus_type, :first_name, :last_name, :avatar, :background, :description, :facebook, :linkedin, :website])
    
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :bus_name, :bus_location, :bus_type, :first_name, :last_name, :avatar, :background, :description, :facebook, :linkedin, :website])	
  end 

end
