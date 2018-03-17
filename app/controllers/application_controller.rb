class ApplicationController < ActionController::Base
#  before_action :require_user_logged_in
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

end