class ItemsController < ApplicationController
  # before_filter :find_list
  # 
  # def index
  #   @items = @list.item.all
  # end
  # 
  # def new
  #   @item = @list.item.build
  # end
  # 
  # def create
  #   @item = @list.item.build(params[:item])
  #   @item.save
  # end
  # 
  # def show
  #   @item = @list.item.find(params[:id])
  # end
  # 
  # def update
  #   @item = @list.item.find(params[:id])
  # end
  # 
  # def find_list
  #   @list = List.find(params[:list_id])
  # end
  
  
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(params[:item])
    @item.save
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:success] = message_update
      redirect_to @item
    else
      render :action => :show
    end
  end
  
  def message_update
    if params[:item][:reserved]
      "You have reserved #{@item.productname}"
    else
      "You have updated #{@item.productname}"
    end
  end

end