class Owner < ActiveRecord::Base
  has_many :houses
  validates :firstname, presence: true
  validates :emailid, presence: true
  validates :phoneno, presence: true
  
end
