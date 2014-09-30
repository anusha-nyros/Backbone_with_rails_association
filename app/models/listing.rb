class Listing < ActiveRecord::Base
  attr_accessible :description, :headline, :name, :feature_ids, :country_id, :state_id

  has_and_belongs_to_many :features
  has_many :contacts, :dependent => :destroy

belongs_to :user
 
belongs_to :country

belongs_to :state
end
