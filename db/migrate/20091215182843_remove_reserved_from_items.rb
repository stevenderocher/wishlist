class RemoveReservedFromItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.remove :reserved
    end
  end

  def self.down
  end
end
