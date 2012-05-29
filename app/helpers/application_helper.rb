module ApplicationHelper
	
	def authorize_resources
		unless user_signed_in?
   			redirect_to new_user_session_path
   		end
	end

	def get_formatted_status(status)
		case status
		when "initial"
			"&#8605;"
		when "in-progress"
			"&#8608;"
		when "done"
			"&#8607;"
		when "dropped"
			"&#8609;"
		else
			"Undefined"
		end

	end

end
