class ApplicationController < ActionController::Base

  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # devise_group :user, contains: [:admin, :customer]

  # protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}
  end

  # private

  # def role_template
  #   user_role = current_user.has_role? :admin ? 'admin' : 'customer'
  #   "#{user_role}_#{action_name}" 
  # end
end
