class Api::V1::AuthController < ApplicationController 
    skip_before_action :authorized, only: [:create]
    
    def create
        @user = User.find_by(username: user_login_pararms[:username])
        if @user && @user.authenticate(user_login_pararms[:password])
            token = encode_token({ user_id: @user.id })
            render json: {user: @user, jwt: token }, status: accepted
        else
            render json: {message: 'Invalid Username or Password'}, status: :unauthorized
        end
    end

    private

    def user_login_pararms
        params.require(:user).permit(:username, :password)
    end


end