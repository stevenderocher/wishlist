class RemoveUserIfFromLists < ActiveRecord::Migration
  def self.up
    change_table :lists do |t|
      t.remove :user_id
      t.references :user
    end
  end

  def self.down
  end
end
