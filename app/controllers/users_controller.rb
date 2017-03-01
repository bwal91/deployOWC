class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  # def import
  # 	User.import(params[:file])

  # 	redirect_to root_url, notice: "User Data imported"
  # end

  def create
  	@user = User.new(allowed_params)
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to '/'
  	else
  		render :back
  	end
  end

  def show 
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end


  def profile
    
  end








  private

  def allowed_params
  	params.require(:user).permit(:first_name, :last_name, :email, :status, :memb, :password_digest, :password_confirmation, :nationality, :emailers, :dob, :language, :gender, :join_date, :admin, :member)
  end
end
