class Listing < ActiveRecord::Base
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
  attr_accessible :description, :headline, :name, :feature_ids

  has_and_belongs_to_many :features
  has_many :contacts, :dependent => :destroy
<<<<<<< HEAD
=======
=======
  attr_accessible :description, :headline, :name
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
end
