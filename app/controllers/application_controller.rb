class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :avatar) }
  end

  def after_sign_in_path_for(resource_or_scope)
    if current_user.rol == 1
      admins_user_path(:id => current_user.id)
    else
      root_path
    end
  end
end