class SkillsController < ApplicationController
	skip_before_action :require_login

	def index
		@skills = Skill.all.order("created_at DESC")
	end 

	def new
		@skill = Skill.new
	end

	def create 
		@skill = Skill.new(skill_params)
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
		if @skill.update(skill_params)
			direct_to skills_path
		else
			render "edit"
		end
	end

	def destroy
		@skill = Skill.find(params[:id])
		@user = User.find(params[:user_id])

		@skill.destroy
		redirect_to skills_path
	end

	private

	def skill_params
		params.require(:skill).permit(:skill_1, :skill_2, :skill_3, :skill_4, :skill_5, :skill_6, :skill_7, :skill_8, :skill_9, :skill_10, :skill_11, :skill_12, :skill_13, :skill_14, :skill_15)
	end       
end
