class ListsController < ApplicationController

  def index
    @list = List.all
  end
  
  def new
    @list = List.new
  end

end