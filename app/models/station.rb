class Station < ActiveRecord::Base
  belongs_to :group,  class_name: "Group", foreign_key: "group_id"
  belongs_to :market
  belongs_to :affiliate, class_name: "Group", foreign_key: "affiliate_id"
  default_scope -> { order('channel ASC') }
  validates :longitude, :allow_nil => true, numericality: true
  validates :latitude, :allow_nil => true, numericality: true
  validates :priority, :allow_nil => true, numericality: true
  validates :channel, :allow_nil => true, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
