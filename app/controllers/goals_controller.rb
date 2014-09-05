class GoalsController < ApplicationController

# GET /units/id/goals/new
	def new
		@logged_user = User.find(session[:current_user_id])
		@unit = Unit.find(params[:unit_id])
		@goal = Goal.new
	end

# POST /units/id/goals/
	def create
		@logged_user = User.find(session[:current_user_id])
		@unit = Unit.find(params[:unit_id])
		@goal = Goal.new(goal_params(params))
		if @goal.save
			redirect_to @unit
		else
			render :edit
		end
	end

private
	def goal_params(params)
		return params.permit(:goal, :level)
	end

end
