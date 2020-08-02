class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/sign_in'
    end
  end
end
