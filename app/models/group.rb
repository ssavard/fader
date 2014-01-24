class Group < ActiveRecord::Base
  has_many :stations, inverse_of: :group
  has_many :affiliates, class_name: "Station", foreign_key: "affiliate_id", inverse_of: :affiliate
  
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :longitude, :allow_nil => true, numericality: true
  validates :latitude, :allow_nil => true, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
