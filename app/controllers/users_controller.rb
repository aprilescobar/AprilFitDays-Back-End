class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    private 
    def user_params
        params.require(:user).permit(:name, :username, :password, :img_url)
    end
end
