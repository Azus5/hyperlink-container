class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  #   protect_from_forgery prepend: true

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/login'
    end
  end
end
