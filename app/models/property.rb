class Property < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  belongs_to :property_type
  has_many :images
  has_many :videos
  has_many :publications
  has_many :characteristic_instances

  validates :location_id, :property_type_id, :user_id, presence: true
end
