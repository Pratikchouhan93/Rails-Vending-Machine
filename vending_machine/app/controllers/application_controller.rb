class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}
  end

  def after_sign_in_path_for(user)
    if user.role == 'admin'
       items_path
    else
       items_path
    end
  end
end
