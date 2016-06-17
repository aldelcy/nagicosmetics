class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  	before_action :configured_permitted_parameters, if: :devise_controller?
    before_filter :main_navigation

  def main_navigation
    prdfmly = Prdfamily.all
    # prdfmly = ['Skin Care','Make Up','Accessories']
    @main_nav = { home: false,
                 products: prdfmly,
                 services: false,
                 courses: false,
                 about: false,
                 contact: false,
                 gallery: false
               }
  end

  def after_sign_up_path_for(resource)
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  protected

  	def configured_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) << [:fname, :lname, :email, :password]
	end

	def authenticate_user!
		if user_signed_in?
		  super
		else
		  redirect_to root_path
		end
	end
end
