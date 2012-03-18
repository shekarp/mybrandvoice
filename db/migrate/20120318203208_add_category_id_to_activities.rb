class AddCategoryIdToActivities < ActiveRecord::Migration
  def self.up
    add_column :activities, :category_id, :integer
  end

  def self.down
    remove_column :activities, :category_id
  end
end
