class Market < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :rank, presence: true, numericality: { only_integer: true }
end
