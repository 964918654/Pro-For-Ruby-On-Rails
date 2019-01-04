class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	def after_sign_in_path_for(resource)
  		if resource.is_a?(User)
  			if User.count == 1
  				resource.add_role 'admin'
        elsif User.count == 2
          resource.add_role 'user' 
  			elsif User.count == 3
          resource.add_role 'allow'
        end
  			resource
  		end
  		root_path
  	end
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, :alert => exception.message
  # exception.action, exception.subject
  end
end
