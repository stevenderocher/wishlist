class Item < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string    :product_name
    	t.string    :seller
    	t.text      :description
    	t.decimal   :price
    	t.integer   :quantity
    	t.string    :product_url
    	t.string    :product_image_url
    	t.text      :comments
    	t.integer   :list_id
    end
  end

  def self.down
    drop_table :items
  end
end
