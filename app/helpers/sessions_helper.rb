module SessionsHelper
	def sign_in(user)
		#remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = user.remember_token
		#user.update_attribute(:remember_token, User.digest(remember_token))
		self.current_user = user #self.current_user = equal to current_user= (...)
	end

	def current_user= (user)             #define assignment operation for current_user
		@current_user = user
	end

	def current_user			  #the def is for current_user
		#remember_token = User.digest(cookies[:remember_token])
		#@current_user ||= User.find_by_remember_token(cookies[:remember_token])
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def signed_in?
	 	!current_user.nil?
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end
end
