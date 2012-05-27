class ApplicationController < ActionController::Base

	protect_from_forgery
	include ApplicationHelper
	layout :layout_by_resource

 	 def layout_by_resource
   	 	if devise_controller? && resource_name == :user && action_name == 'new'
   	 		"devise"
   	 	else
     	 	"application"
   	 	end
 	 end

 	 def after_sign_in_path_for(resource_name = :user)
        root_path
     end
	
end
