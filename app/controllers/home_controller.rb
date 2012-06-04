class HomeController <  ApplicationController

  def index
  	if user_signed_in?
    	@projects = current_user.projects.all
    	@own_projects = current_user.authored_projects.all
    	if @projects.empty? && @own_projects.empty?
    		render  'empty'
    	end
	else
		render 'home'
	end
  end

end
