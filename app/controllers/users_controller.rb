class UsersController < Clearance::UsersController
  
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    # @user = User.find(params[:key => "value", id])
  end
  
end