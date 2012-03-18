class AddConsumerIdToFacebook < ActiveRecord::Migration
  def self.up
  add_column :facebooks, :consumer_id, :integer
  end
end
