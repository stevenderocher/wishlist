class Item < ActiveRecord::Base
  
  attr_accessible :seller, :price, :quantity, :product_url, :comments, :product_name, :product_image_url, :description, :reserved, :reserved_by
  
  belongs_to :list
  
  validate :doublereserve
  
  # def reserve
  #   if @item.reserved == true
  #     flash[:notice] = 'This item is already reserved'
  #   else
  #     @item.update_attribute(:reserved, true)
  #     flash[:success] = 'You have reserved this item'
  #   end
  # end
    
  def doublereserve
      if reserved_was && reserved
        errors.add(:reserved, 'This item has already been reserved')
      end
  end
  
end