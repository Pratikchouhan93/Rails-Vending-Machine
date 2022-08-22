class ApplicationController < ActionController::Base
   before_action :authenticate_user!

   devise_group :user, contains: [:admin, :customer]
end
