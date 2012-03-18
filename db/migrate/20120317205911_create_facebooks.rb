class CreateFacebooks < ActiveRecord::Migration
  def change
    create_table :facebooks do |t|
      t.string :appid
      t.string :appsecrect

      t.timestamps
    end
  end
end
