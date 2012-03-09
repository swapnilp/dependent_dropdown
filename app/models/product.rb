class Product < ActiveRecord::Base
  #accociation
  has_many :subproducts
  
  #validation
  validates :name, :presence => true
  validates_associated :subproducts

  #callback
 
end
