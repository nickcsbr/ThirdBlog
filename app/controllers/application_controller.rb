class ApplicationController < ActionController::Base

  #before_filter :configure_devise_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  ## Modification

  # protected

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) << :username
  #end

  #def configure_devise_permitted_parameters
  #  registration_params = [:username, :email, :password, :password_confirmation]

  #  if params[:action] == 'update'
  #    devise_parameter_sanitizer.for(:account_update) {
  #        |u| u.permit(registration_params << :current_password)
  #    }
  #  elsif params[:action] == 'create'
  #    devise_parameter_sanitizer.for(:sign_up) {
  #        |u| u.permit(registration_params)
  #    }
  #  end
  #end
end
