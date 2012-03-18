class AddBrandIdToInfluence < ActiveRecord::Migration
  def self.up
  add_column :influences, :brand_id, :integer
  end
end
