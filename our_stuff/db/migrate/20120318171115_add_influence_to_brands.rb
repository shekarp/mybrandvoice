class AddInfluenceToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :influence, :integer
  end
end
