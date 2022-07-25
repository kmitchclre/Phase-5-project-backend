class SessionsController < ApplicationController
    skip_before_action :authorize

    def create
     user = User.find_by(username: params[:username])
     if user&.authenticate(params[:password])
         session[:user_id] = user.id
         render json: user, status: :created
     else
         render json: {message: "Invalid username or password", error: true}, status: :unauthorized
     end
    end
 
    def destroy
       session[:user_id] = nil
       render json: { message: "signed out!" }
    end
 
 end
 