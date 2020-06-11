class SessionsController < ApplicationController

    def new
    end


    def create

        user=User.find_by(email: session_params[:email])

         if user&.authenticate(session_params[:password])
            session[:user_id]=user.id

            redirect_to root_path

         else 
            render :new
         end


    end




end
