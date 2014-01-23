class Group < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :longitude, :allow_nil => true, numericality: true
  validates :latitude, :allow_nil => true, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
