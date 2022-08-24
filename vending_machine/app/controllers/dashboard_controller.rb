class DashboardController < ApplicationController

  # GET /dashboard
  def show
    if current_user.has_role? :admin
      admin_dashboard
    else
      customer_dashboard
    end
  end

  private

  def admin_dashboard
    # load data required for admins
    
    render role_template
  end

  def customer_dashboard
    # load data required for customers
    render role_template
  end
end
