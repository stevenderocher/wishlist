class ListsUserIdRedo < ActiveRecord::Migration
  def self.up
    change_table :lists do |t|
      t.remove :user_id
      t.integer :user_id
    end
  end

  def self.down
  end
end
