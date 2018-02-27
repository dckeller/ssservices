class ProfilesController < ApplicationController
	skip_before_action :require_login

	def show
		@user = User.find(params[:id])
		@users = User.all
		@skill = Skill.where(user_id: current_user.id)
		@slot = Slot.where(user_id: current_user.id)
	end

	private

	def skill_params
		params.require(:profile).permit(:description)
	end 

end
