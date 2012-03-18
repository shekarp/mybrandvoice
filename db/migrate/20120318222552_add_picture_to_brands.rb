class AddPictureToBrands < ActiveRecord::Migration
  def self.up
    add_column :brands, :picture, :string
  end

  def self.down
    remove_column :brands, :picture
  end
end
