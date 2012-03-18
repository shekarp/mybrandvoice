class AddInfluenceToBrands < ActiveRecord::Migration
  def self.up
  add_column :brands, :influence, :integer
  end
end
