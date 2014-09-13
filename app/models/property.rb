class Property < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  has_many :images
  has_many :publications

  validates :location_id, :user_id, :address, :type_of_building,
            :covered_area, :total_area, presence: true
end
