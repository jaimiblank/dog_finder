class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Add this method
  def after_sign_in_path_for(resource)
    dogs_path
  end
end
