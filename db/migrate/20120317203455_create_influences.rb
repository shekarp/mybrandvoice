class CreateInfluences < ActiveRecord::Migration
  def self.up
  create_table :influences do |t|
      t.integer :influence
      t.integer :mentions
      t.integer :networkReplies
      t.boolean :fan

      t.timestamps
    end
  end
end
