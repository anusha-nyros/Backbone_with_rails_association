class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :listing_id

  belongs_to :listing

  validates :phone, :presence => true, :format => /[0-9]{10}/

end
