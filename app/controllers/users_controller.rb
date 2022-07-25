class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def index
    users = User.all
    render json: users, status: :ok
end

def create
    user = User.create!(user_params)
    # byebug
    render json: user, status: :created
end

def show
    user = User.find_by(id: session[:user_id])
    if user
        render json: user
    else
        render json: { error: "Not authorized"}, status: :unauthorized
    end
end

private

def user_params
    params.permit(:username, :password)
  end
end
