class ListsController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :create, :edit, :update]
  before_filter :authenticate_message
  
  def index
    @lists = List.all
  end
  
  def new
    @user = User.find(params[:user_id])
    # @list = List.new(:user_id => @user.id)
    @list = @user.lists.build
  end
  
  def create
    @user = User.find(params[:user_id])
    @list = @user.lists.build(params[:list])
    @list.save
    redirect_to [@user, @list]
  end
  
  def show
    @user = User.find(params[:user_id])
    @list = @user.lists.find(params[:id])
  end
  
  def edit
    @list = @user.list.find(params[:id])
  end
  
  
  def authenticate_message
    authenticate = flash[:error] = "You must be signed in to do that"
  end

end