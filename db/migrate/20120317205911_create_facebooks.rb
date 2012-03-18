class CreateFacebooks < ActiveRecord::Migration
  def self.up
  create_table :facebooks do |t|
      t.string :appid
      t.string :appsecrect

      t.timestamps
    end
  end
end
