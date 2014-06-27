class Listing < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :description, :headline, :name, :feature_ids

  has_and_belongs_to_many :features
  has_many :contacts, :dependent => :destroy
=======
  attr_accessible :description, :headline, :name
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
end
