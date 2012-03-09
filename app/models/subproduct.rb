class Subproduct < ActiveRecord::Base
  #associated
  belongs_to :product
  has_many :subsubproducts
  
  #validates
  validates_associated :subsubproducts
  validates :product_id, :presence => true
  validates :name, :presence => true
  
  #callback
  before_validation :validate_product
  
  def validate_product
    errors.add(:product_id, 'not presence') if Product.find_by_id( self[:product_id] ) == nil
  end
end
