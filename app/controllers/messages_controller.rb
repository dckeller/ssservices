class MessagesController < ApplicationController
	skip_before_action :require_login
	
	def index
		@message = Message.new
		@messages = Message.all
		@slot = Slot.find_by(params[:slot_creator_id])
		@chat = Chat.find_by(params[:id])
	end

	def new
		@slot = Slot.find_by(params[:slot_creator_id])
		@chat = Chat.find(params[:id])
	end

	def create
		@message = Message.new(message_params)
		@slot = Slot.find_by(params[:slot_creator_id])
		@chat = Chat.find_by(params[:id])
		@message.chat_id = @chat.id
		@message.slot_creator_id = @slot.id
		@message.worker_id = current_user.id

		if @message.save
			redirect_to "/slots/#{@slot.id}/chats/#{@chat.id}/messages"
		else 
			render "new"
		end 
	end  

private

	def message_params
	  params.require(:message).permit(:slot_creator_id, :worker_id, :body, :chat_id)
	end

end
