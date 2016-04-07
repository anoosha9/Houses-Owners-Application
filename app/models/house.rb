class House < ActiveRecord::Base
  belongs_to :owner
  validates :housetype, presence: true
  def self.all_housetype
    %w[1Bed 2Bed 3Bed Duplex]
  end
  validates :price, presence: true
  validates :addeddate, presence: true
  validates :availability, presence: true
  validates :hno, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

end
