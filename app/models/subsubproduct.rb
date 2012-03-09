class Subsubproduct < ActiveRecord::Base
  #associated
  belongs_to :subproduct
  
  #validates
  validates :subproduct_id, :presence => true
  validates :name, :presence => true
  
  #callback
  before_validation :validate_subproduct
  
  def validate_subproduct
    errors.add(:subproduct_id, 'not presence') if Subproduct.find_by_id( self[:subproduct_id] ) == nil
  end
end
