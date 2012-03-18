class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.text :text
      t.integer :consumer_id
      t.string :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
