module SessionsHelper
	
	def forget(user)
		user.forget
		cookies.delete(:user_id)
		cookies.delete(:remember_token)
	end

	# Logs out the current user
	def log_out
		super
		@current_user = nil
	end

end
