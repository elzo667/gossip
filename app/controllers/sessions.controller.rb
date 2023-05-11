class SessionsController < ApplicationController
    def new
    end

    def create
        user= User.find_by(email: :params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id]=user.id
            redirect_to root_path, notice:"logged in successfully"
        else
            flash[:alert]= "invalid email or password"
            render :new
                end
    
    
    
    
    def destroy
        sessions [:user_id]= nil
        redirect_to root_path, notice: "logged out"
    end
end
        