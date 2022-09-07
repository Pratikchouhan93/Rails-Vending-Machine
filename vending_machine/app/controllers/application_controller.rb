# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :type) }
  end

  def after_sign_in_path_for(user)
    if user.type == 'Admin'
      root_path
    else
      root_path
    end
  end
end
