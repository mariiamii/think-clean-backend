class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user   
    end

    def favorites
        @user = User.find(params[:id]).favorites
        render json: @user   
    end

    def create
        @user = User.new(user_params)

        if @user.save
           render :json => @user
        else
           render :json => 'user'
        end
    end
    
    def user_params
        params.require(:user).permit(:name, :username, :password)
     end
end
