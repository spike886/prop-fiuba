class CharacteristicInstance::Boolean < CharacteristicInstance
  validates :boolean, presence: true

  def value
    boolean
  end
end
