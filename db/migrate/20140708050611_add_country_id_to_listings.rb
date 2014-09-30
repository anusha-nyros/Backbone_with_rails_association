class AddCountryIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :country_id, :integer
  end
end
