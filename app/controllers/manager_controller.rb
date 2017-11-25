class ManagerController < ApplicationController
  before_action :authorize_manager!

  def index

  end
end