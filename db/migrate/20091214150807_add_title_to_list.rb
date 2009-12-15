class AddTitleToList < ActiveRecord::Migration
  def self.up
    add_column :lists, :title, :string
  end

  def self.down
    remove_column :lists, :title
  end
end
