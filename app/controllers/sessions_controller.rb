class SessionsController < ApplicationController
	skip_before_action :require_login
	
	def index
		@slots = Slot.all.order("created_at ASC")
		@chat = Chat.new
		@request = Request.new(params[:request])
	end
	  
end 
