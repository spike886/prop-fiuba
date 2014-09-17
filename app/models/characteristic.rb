class Characteristic < ActiveRecord::Base
  has_and_belongs_to_many :property_types
  has_many :characteristic_instances

  CHARACTERISTIC_TYPES = ["Boolean", "Integer", "String", "Values"]

  validates :characteristic_type, inclusion: {in: CHARACTERISTIC_TYPES}
end
