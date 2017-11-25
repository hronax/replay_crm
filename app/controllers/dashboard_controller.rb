class DashboardController < ApplicationController

  before_action :authorize!

  def index
    redirect_path = current_user.admin? ? admin_index_path : manager_index_path
    redirect_to redirect_path
  end
end