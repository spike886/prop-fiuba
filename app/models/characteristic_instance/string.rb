class CharacteristicInstance::String < CharacteristicInstance
  validates :string, presence: true

  def value
    string
  end
end
