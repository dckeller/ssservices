class SlotsController < ApplicationController
	skip_before_action :require_login

	def index
		@slots = Slot.all.order("created_at DESC")
	end 

	def new
		@slot = Slot.new
	end

	def create 
		@slot = Slot.new(slot_params)
		@slot.user_id = current_user.id

		if @slot.save
			redirect_to profile_path(current_user.id)
		else
			render "new"
		end
	end

	def show
		@slot = Slot.find(params[:id])
	end

	def edit
		@slot = Slot.find(params[:id])
	end

	def update
		@slot = Slot.find(params[:id])
		@user = User.find(params[:user_id])
		if @slot.update(slot_params)
			direct_to profile_path(current_user.id, anchor: "#profile-slots")
		else
			render "edit"
		end
	end

	def destroy
		@slot = Slot.find_by(params[:user_id])

		@slot.destroy
		redirect_to profile_path(current_user.id)
	end

	private

	def slot_params
		params.require(:slot).permit(:date, :city, :contact, :start_time, :end_time, :state)
	end       
end
