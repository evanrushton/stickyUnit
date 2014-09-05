class UnitsController < ApplicationController
	respond_to :html, :json
# GET /units/index	 
	# def index
	# 	@title = "Unit List"
	# 	@units = User.units.all
	# 	if session[:current_user_id] != nil
	# 		@logged_user = User.find(session[:current_user_id])
	# 	end
	# end

# GET /units/:id (session[:current_user_id])
	def show
		@title = "Unit Contents"
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
		end
		@unit = Unit.find(params[:id])
		
		# Instance variables for goal objects
		@goal = Goal.new
		@goals = @unit.goals
		@goals1, @goals2, @goals2_3, @goals3, @idea = Array.new, Array.new, Array.new, Array.new, Array.new
		@goals.each do |g| 
			if g.level == 1 
				@goals1 << g
			end
			if g.level == 2 
				@goals2 << g
				@goals2_3 << g
			end
			if g.level == 3 
				@goals3 << g
				@goals2_3 << g
			end
			if g.level == 4
				@idea << g
			end
		end

		# Instance variables for evidence objects
		@evidences = @unit.evidences
		@depths = Evidence.where(:unit_id => @unit.id).pluck(:depth)
		if @depths.any?{|d| d == 1}
			@evidence1 = Evidence.where(:unit_id => @unit.id).where(:depth => "1")
		end
		if @depths.any?{|d| d == 2}
			@evidence2 = Evidence.where(:unit_id => @unit.id).where(:depth => "2")
		end
	end

# GET /units/new
	def new
		if session[:current_user_id] == nil
			redirect_to login_users_path, notice: "You must log in to add units"
		else
			@logged_user = User.find(session[:current_user_id])
			@unit = Unit.new
		end
	end

# GET /units/edit/:id
	# def edit
	# 	@logged_user = User.find(session[:current_user_id])
	# 	@user = User.find(params[:id])
	# end

# POST /units/
	def create
		@logged_user = User.find(session[:current_user_id])
		@unit = Unit.new(unit_params(params[:unit]))
		@unit.user = @logged_user
		if @unit.save
			redirect_to @unit, notice: "Unit created successfully"
		else
			render :edit
		end
	end

# PATCH /units/:id
	def update
		@unit = Unit.find(params[:id])
		@unit.update(user_params(params[:id]))
		respond_with @unit
	end

def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    redirect_to users_url, notice: "Successfully destroyed unit."
  end

	def print
		@logged_user = User.find(session[:current_user_id])
		@unit = Unit.find(params[:id])
	end

	private
	def unit_params(params)
		return params.permit(:name)
	end
end


