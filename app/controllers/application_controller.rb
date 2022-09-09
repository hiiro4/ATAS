class ApplicationController < ActionController::Base
before_action :authenticate_user!, except: [:top]

  def after_sign_in_path_for(resource)
    public_homes_path
  end

  def after_sign_up_path_for(resource)
    public_homes_path
  end

  def after_update_path_for(resource)
     public_homes_path(current_user)
  end
end

