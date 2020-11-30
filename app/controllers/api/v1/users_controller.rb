class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end
    

    def create
        user = User.new(user_params)
        unless user.save
            render json: { status: 500 }
        else
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        end
    end
    

    private

    def user_params
        params.require(:user).permit(:username, :email, :wallet, :password)
    end
    
    
end