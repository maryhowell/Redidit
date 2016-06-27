class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  before_action :authenticate_user! 

after_action :verify_authorized, unless: :devise_controller?

rescue_from Pundit::NotAuthorizedError do |e|
   flash[:danger] = "You don't have permissions for this request"
   redirect_to root_path
 end

end
