class AddPictureToConsumers < ActiveRecord::Migration
  def self.up
    add_column :consumers, :picture, :string
  end

  def self.down
    remove_column :consumers, :picture
  end
end
