class Property < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  has_many :images
  has_one :publication
end
