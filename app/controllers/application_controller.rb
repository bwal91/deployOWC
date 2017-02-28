class ApplicationController < ActionController::Base
	include CanCan::ControllerAdditions
	include LoadAndAuthorizeResource
	
	protect_from_forgery with: :exception

	before_action :authenticate_user!
	
	helper_method :mailbox, :conversation
	helper_method :current_user
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  	end

	def current_user

		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		
	end

	def toast(type, text)
		flash[:toastr] = { type => text}
	end
	


	def after_sign_in_path_for(resource)
	    :root
	end



	private


  	def mailbox
  		@mailbox ||= current_user.mailbox
  	end

  	def conversation
    	@conversation ||= mailbox.conversations.find(params[:id])
  	end

	protected


	def configure_permitted_parameters
		added_attrs = [:email, :password, :password_confirmation, :remember_me]
		devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
		devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
	end
end
