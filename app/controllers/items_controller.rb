class ItemsController < ApplicationController
  before_filter :find_list
  
  def index
    @items = @list.items.all
  end
  
  def new
    @item = @list.items.build
  end
  
  def create
    @item = @list.items.build(params[:item])
    @item.save
    redirect_to [@list, @item]
  end
  
  def show
    @item = @list.items.find(params[:id])
  end
  
  def update
    @item = @list.items.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:success] = message_update
      redirect_to :back
    else
      render :action => :show
    end
  end
  
  def find_list
    @list = List.find(params[:list_id])
  end
  
  def message_update
    if params[:item][:reserved]
      "You have reserved #{@item.product_name}"
    else "You have updated #{@item.product_name}"
    end
  end

end