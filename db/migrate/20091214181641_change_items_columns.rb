class ChangeItemsColumns < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.rename :product_name, :productname
      t.rename :product_url, :producturl
      t.rename :product_image_url, :productimageurl
    end
  end

  def self.down
  end
end
