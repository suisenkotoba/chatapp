class ChatsController < ApplicationController
  def index
  	if (cookies[:username] == nil)
  	  	redirect_to user_new_path
  	end
    @messages = Message.all
  end
end
