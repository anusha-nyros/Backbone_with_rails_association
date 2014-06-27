class CreateFeaturesLisitngsTable < ActiveRecord::Migration
  def self.up
	create_table :features_listings, :id => false do |t|
		t.integer :feature_id
		t.integer :listing_id
	end
  end

  def down
	drop_table :features_listings
  end
end
