class ListsController < ApplicationController
  
  before_filter :authenticate_user, :only => [:new, :create, :edit, :update]
  
  def index
    @lists = List.all
  end
  
  def new
    @user = User.find(params[:user_id])
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
  
  def authenticate_user
    deny_access('You must be signed in to do that') unless signed_in?
  end
  

end