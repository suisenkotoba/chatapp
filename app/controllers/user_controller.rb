class UserController < ApplicationController
	def new
	end

	def create
		cookies[:username] = params[:user][:username]
    	redirect_to chats_path
	end
end
