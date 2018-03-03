class ChatsController < ApplicationController
	skip_before_action :require_login

	def new
		@chat = Chat.new
		@slot = Slot.find_by(params[:slot_creator_id])
	end 

	def create
		@chat = Chat.create(chat_params)
		@slot = Slot.find_by(params[:slot_creator_id])
		@user = User.find_by(params[:slot_creator_id])
		@chat.worker_id = current_user.id

		@chat.save
		redirect_to "/slots/#{@slot.id}/chats/#{@chat.id}/messages"
	end  

private

	def chat_params
	  params.require(:chat).permit(:slot_creator_id, :worker_id)
	end

end
