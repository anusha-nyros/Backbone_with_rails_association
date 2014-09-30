class State < ActiveRecord::Base
  attr_accessible :country_id, :name

  has_many :listings, dependent: :destroy

  belongs_to :country
end
