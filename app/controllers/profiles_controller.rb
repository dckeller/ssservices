class ProfilesController < ApplicationController
	skip_before_action :require_login

	## This is the profile page for SSServices ##
	def index
		@user = User.find(1)
		@skill = Skill.where(user_id: 1)
		@slot = Slot.where(user_id: 1)
	end

	## Profile pages for everyone else ##
	def show
		@users = User.all
		@skill = Skill.where(user_id: current_user.id)
		@slot = Slot.where(user_id: current_user.id)
	end


end
