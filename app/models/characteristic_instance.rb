class CharacteristicInstance < ActiveRecord::Base
  belongs_to :characteristic
  belongs_to :property
end
