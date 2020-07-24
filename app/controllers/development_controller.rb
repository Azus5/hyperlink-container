class DevelopmentController < ApplicationController
  before_action :get_user, only: [:show]
  skip_before_action :authenticate_user!

  # GET /show/users
  def index
    users = User.all
    render json: {
      users: users
    }
  end

  # GET /show/:id
  def show
    render json: @user
  end

  protected

  def get_user
    @user = User.find(params[:id])
  end
end
