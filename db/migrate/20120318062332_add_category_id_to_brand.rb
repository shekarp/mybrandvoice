class AddCategoryIdToBrand < ActiveRecord::Migration
  def self.up
    add_column :brands, :category_id, :integer
  end
end
