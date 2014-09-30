class Country < ActiveRecord::Base
  attr_accessible :name

  has_many :listings, dependent: :destroy

  has_many :states, dependent: :destroy
end
