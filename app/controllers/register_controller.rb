class RegisterController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    render inertia: 'Register/index'
  end
end
