class ChatsController < ApplicationController
	skip_before_action :require_login

	def index
		@chats = Chat.all.order("updated_at DESC")
		@slots = Slot.all
	end 

	def new
		@chat = Chat.new
		@slot = Slot.find_by(params[:slot_creator_id])
	end 

	def create
		@chat = Chat.create(chat_params)
		@slot = Slot.find_by(params[:slot_creator_id])
		@chat.slot_id = @slot.slot_creator_id
		@chat.worker_id = current_user.id
		@chat.slot_creator_id = @slot.slot_creator_id

		@chat.save
		redirect_to "/slots/#{@slot.id}/chats/#{@chat.id}"
	end

	def show
		@message = Message.new
		@messages = Message.all
		@slot = Slot.find_by(params[:slot_creator_id])
		@chat = Chat.find(params[:id])
	end   

private

	def chat_params
	  params.require(:chat).permit(:slot_creator_id, :worker_id, :slot_id)
	end

end
