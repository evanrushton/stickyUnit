class UsersController < ApplicationController

# GET /users/index	 
	def index
		@title = "Teacher List"
		@all_users = User.all
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
		end
	end

# GET /users/:id (session[:current_user_id])
	def show
		@title = "Teacher Units"
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
		end
		@user = User.find(params[:id])
		@units = @user.units
	end

# GET /users/new
	def new
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
			redirect_to(@logged_user, notice: "Logout to create a new teacher.")
		end
		@user = User.new
	end

# GET /users/edit/:id
	def edit
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
		end
		@user = User.find(params[:id])
	end

# POST /users/
	def create
		if session[:current_user_id] != nil
			@logged_user = User.find(session[:current_user_id])
			redirect_to(@logged_user, notice: "Logout to create a new teacher.")
		end
		@user = User.new(user_params(params[:user]))
		if @user.save
			session[:current_user_id] = @user.id
			redirect_to(@user, notice: "Teacher created successfully!")
		else
			render :new
		end
	end

def post_login
	@user = User.find_by_login(params[:login])
	if @user != nil
		session[:current_user_id] = @user.id
		redirect_to @user
	else
		flash[:notice] = "No such user exists in the database."
		redirect_to login_users_path 
	end
end

def logout
	session[:current_user_id] = nil
	flash[:notice] = "You have successfully logged out."
	redirect_to "/users/login" 
end

# PATCH /users/:id
	def update
		@user = User.find(params[:id])
		if @user.update(user_params(params[:user]))
			redirect_to @user
		else
			render :edit
		end
	end

	private
	def user_params(params)
		return params.permit(:login)
	end
end



