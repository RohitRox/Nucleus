class HomeController <  ApplicationController

  def index
  	if user_signed_in?
    	@projects = current_user.projects.all
    	@own_projects = current_user.authored_projects.all
	else
		render 'home'
	end
  end

end
