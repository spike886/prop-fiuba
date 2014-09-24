class CharacteristicInstance::Integer < CharacteristicInstance
  validates :integer, presence: true

  def value
    integer
  end
end
