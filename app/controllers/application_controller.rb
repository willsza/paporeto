class ApplicationController < ActionController::Base
  
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	layout :layout_for_devise
	before_action :set_categories

	private
		def set_categories
			@categories = Category.all
		end

		def layout_for_devise
			if devise_controller?
				'admin'
			end
		end
end
