class AddReservedByToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.integer :reserved_by_user
    end
  end

  def self.down
  end
end
