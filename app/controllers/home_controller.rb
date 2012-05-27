class HomeController <  ApplicationController

  before_filter :authorize_resources

  def index
 	@projects = current_user.projects.all
 	@own_projects = current_user.authored_projects.all
  end

end
