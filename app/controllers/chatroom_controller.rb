class ChatroomController < ApplicationController
    before_action :require_user

    def index
        @messages = Message.all.order("created_at DESC")
    end

    
end
