class UsersController < ApplicationController
    
    
    # def create
    #     @user = User.create(user_params())
    
    #     if @user.valid?
    #        render :json: @user, status: 201
    #     else
    #        render :json {message: "Failed to create a new user."}, status: 403
    #     end
    # end
    
    # private
    
    # def user_params
    #     params.permit(:name, :username, :password)
    # end
    
    # before_action :authorized, only: [:stay_logged_in]
    
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
        # byebug
        @user = User.create(user_params())
        if @user.valid?
            render json: @user, status: 201
        else
            render json: {message: "Failed to create a new user"}, status: 403
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: @user
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    # def stay_logged_in
    #     wristband = encode_token({user_id: @user.id})
    #     render json: {
    #     user: UserSerializer.new(@user),
    #     token: wristband
    #     }
    # end

    private

    def user_params
        params.permit(:name, :username, :password)
    end
end
