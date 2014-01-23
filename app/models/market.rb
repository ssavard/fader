class Market < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :rank, presence: true, numericality: { only_integer: true }, uniqueness: true
  validates :longitude, :allow_nil => true, numericality: true
  validates :latitude, :allow_nil => true, numericality: true
end
