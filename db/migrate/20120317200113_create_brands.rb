class CreateBrands < ActiveRecord::Migration
  def self.up
  create_table :brands do |t|
      t.string :name
      t.string :page
      t.string :website

      t.timestamps
    end
  end
end
