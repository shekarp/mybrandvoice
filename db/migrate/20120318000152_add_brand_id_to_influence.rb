class AddBrandIdToInfluence < ActiveRecord::Migration
  def change
    add_column :influences, :brand_id, :integer
  end
end
