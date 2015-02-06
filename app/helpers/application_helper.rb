module ApplicationHelper
	def size_of(body)
		concat raw "&raquo; " 
		pluralize(body.size, 'caracter', 'caracteres')
	end

	def nav_status(controller)
		if params[:controller] == controller 
			'active'
		end
	end
end
