class AddReservedToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.boolean :reserved, :default => false
    end
  end

  def self.down

  end
end
