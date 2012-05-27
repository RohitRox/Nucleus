class HomeController <  ApplicationController

  before_filter :authorize_resources

  def index
 	@own_projects = current_user.projects.all
 	@projects = current_user.authored_projects.all
  end

end
