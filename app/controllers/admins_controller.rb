class AdminsController < ApplicationController
  
  def index
  	@admins = Admin.all 
  end

  def show
  	@admin = Admin.find(session[:admin_id])
  end

  def new 
  	@admin = Admin.new
  end

  def create
  	@admin = Admin.new(admin_params)
  	if @admin.save
  		session[:admin_id] = @admin.id 
  		redirect_to root_url, notice: "Admin created"
  	else
  		redirect_to signup_path
  	end
  end

  private
  def admin_params
  	params.require(:admin).permit(:username, :password, :password_confirmation)
  end
end