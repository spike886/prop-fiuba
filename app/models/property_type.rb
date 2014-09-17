class PropertyType < ActiveRecord::Base
  has_and_belongs_to_many :characteristics
  has_many :properties
end
