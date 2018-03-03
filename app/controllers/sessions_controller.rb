class SessionsController < ApplicationController
	skip_before_action :require_login
	
	def index
		@slots = Slot.all.order("created_at DESC")
		@contact = Contact.new
		@chat = Chat.new
	end
	 
end
