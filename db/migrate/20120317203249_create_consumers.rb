class CreateConsumers < ActiveRecord::Migration
  def self.up
  create_table :consumers do |t|
      t.string :name
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
