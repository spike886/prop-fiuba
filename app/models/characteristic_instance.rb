class CharacteristicInstance < ActiveRecord::Base
  belongs_to :characteristic, inverse_of: :characteristic_instances
  belongs_to :property, inverse_of: :characteristic_instances


  def name
    characteristic.name
  end

  def characteristic_type
    characteristic.characteristic_type
  end
end
