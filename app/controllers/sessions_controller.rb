class SessionsController < ApplicationController
    def create
        username=params[:username]
        password=params[:password]
        user = User.find_by(username: email)
        
        if user 
            if user.password == password 
                render json: user
            else 
                render json: {errors: "Sorry, you entered the wrong password. Please try again."}
            end 
        else 
            render json: {errors: "User not found."}
        end
    end
end
