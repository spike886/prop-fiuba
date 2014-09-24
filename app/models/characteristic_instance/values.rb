class CharacteristicInstance::Values < CharacteristicInstance
  validates :values, presence: true

  def value
    values
  end
end
