class ApplicationController < ActionController::Base
  include Authorized
  before_action :authorize!, unless: :devise_controller?
end
