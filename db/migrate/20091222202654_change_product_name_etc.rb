class ChangeProductNameEtc < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.rename :productimageurl, :product_image_url
    end
  end

  def self.down
  end
end
