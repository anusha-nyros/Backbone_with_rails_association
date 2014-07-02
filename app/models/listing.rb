class Listing < ActiveRecord::Base
  attr_accessible :description, :headline, :name, :feature_ids

  has_and_belongs_to_many :features
  has_many :contacts, :dependent => :destroy

end
