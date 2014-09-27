class Property < ActiveRecord::Base
  belongs_to :location, inverse_of: :properties
  belongs_to :user, inverse_of: :properties
  belongs_to :property_type, inverse_of: :properties
  has_many :images, inverse_of: :property
  has_many :videos, inverse_of: :property
  has_many :publications, inverse_of: :property
  has_many :characteristic_instances, inverse_of: :property

  accepts_nested_attributes_for :location, reject_if: :all_blank
  accepts_nested_attributes_for :images, reject_if: :all_blank
  accepts_nested_attributes_for :videos, reject_if: :all_blank
  accepts_nested_attributes_for :characteristic_instances, reject_if: lambda { |att| (att[:boolean]||att[:string]||att[:integer]||att[:values]).nil? }

  validates :user, presence: true
  validates :property_type, presence: true, if: :active_or_property_type?
  validates :characteristic_instances, presence: true, if: :active_or_data_input_two?
  validates_associated :characteristic_instances, if: :active_or_data_input_two?
  validates :images, presence: true, if: :active_or_data_input_one?
  validates_associated :images, if: :active_or_data_input_one?
  validates_associated :videos, if: :active_or_data_input_one?
  validates :address, presence: true, if: :active_or_data_input_three?
  validates :location, presence: true, if: :active_or_data_input_three?
  validates :description, presence: true, if: :active_or_data_input_three?

  def active_or_property_type?
    publications.last.try(:active_or_property_type?)
  end

  def active_or_data_input_one?
    publications.last.try(:active_or_data_input_one?)
  end

  def active_or_data_input_two?
    publications.last.try(:active_or_data_input_two?)
  end

  def active_or_data_input_three?
    publications.last.try(:active_or_data_input_three?)
  end
end
