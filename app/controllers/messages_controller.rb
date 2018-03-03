class MessagesController < ApplicationController
	skip_before_action :require_login
	
	def index
		@messages = Message.all
	end

private

	def message_params
	  params.require(:message).permit(:slot_creator_id, :worker_id, :body)
	end

end
