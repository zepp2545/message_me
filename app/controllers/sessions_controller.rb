class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:create, :new]

    def new
    end


    def create

        user=User.find_by(username: params[:username])

         if user&.authenticate(params[:password])
            session[:user_id]=user.id
            flash[:success] =  "You have successfully logged in"
            redirect_to root_path
         else
            flash[:error] = "There was something wrong"
            render :new
         end


    end


    def destroy
        session[:user_id] = nil
        flash[:success] = "You have successfully logged out"
        redirect_to login_path
    end


    private 
      def logged_in_redirect
        if logged_in?
            flash[:error] = "You are already logged in"
            redirect_to root_path
        end
      end

end
