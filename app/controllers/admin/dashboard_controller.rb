class Admin::DashboardController < Admin::BaseController

  def index
    @user = User.find(current_user.id)
  end

end