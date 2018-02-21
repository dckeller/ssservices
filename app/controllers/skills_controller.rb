class SkillsController < ApplicationController

	def index
		@skills = Skill.all
	end

	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.create(skills_params)
		@skill.user_id = current_user.id

		if @skill.save
			redirect_to skills_path
		else
			render "new"
		end
	end 

	def show
		@skill = Skill.find(params[:id])
	end

	def edit
		@skill = Skill.find(params[:id])
	end

	def update
		@skill = Skill.find(params[:id])
		@user = User.find(params[:user_id])
		
		if @slot.update(skills_params)
			direct_to skills_path
		else
			render "edit"
		end
	end

	def destroy
		@skill = Skill.find(params[:id])
		@user = User.find(params[:user_id])

		@slot.destroy
		redirect_to skills_path
	end

	private

	def skills_params
		params.require(:skill).permit(:catagory, :certification, :user_id)   	
	end

end
