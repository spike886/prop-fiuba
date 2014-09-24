class Publication < ActiveRecord::Base
  belongs_to :property, inverse_of: :publications
  belongs_to :user, inverse_of: :publications
  belongs_to :publication_type, inverse_of: :publications
  has_one :location, through: :property

  OPERATION_TYPES = ["Venta", "Alquiler", "Alquiler temporal"]
  CURRENCY = ["$", "u$s"]

  scope :wizard_finished, -> { where(status: 'active') }
  scope :actives, -> { where(status: 'active').where("end_date > ?",Time.zone.now) }

  accepts_nested_attributes_for :property, update_only: true

  validates :user, presence: true
  validates :operation_type, presence: true, if: :active_or_operation_type?
  validates :operation_type, inclusion: {in: OPERATION_TYPES}, if: :active_or_operation_type?
  validates :publication_type, presence: true, if: :active_or_publication_type?
  validates :property, presence: true, if: :active_or_property_type?
  validates_associated :property, if: :active_or_property_type?
  validates :price, :currency, presence: true, if: :active_or_data_input_three?

  before_update :initialize_dates

  def state
    if Time.zone.now > end_date
      "finished"
    elsif active
      "active"
    else
      "paused"
    end
  end

  def price_with_currency
    "#{currency}#{price}"
  end

  def highlight
    publication_type.highlight
  end

  def wizard_finished?
    status == 'active'
  end

  def active_or_operation_type?
    status.include?('operation_type') || active?
  end

  def active_or_publication_type?
    status.include?('publication_type') || active?
  end

  def active_or_property_type?
    status.include?('property_type') || active?
  end

  def active_or_data_input_one?
    status.include?('data_input_one') || active?
  end

  def active_or_data_input_two?
    status.include?('data_input_two') || active?
  end

  def active_or_data_input_three?
    status.include?('data_input_three') || active?
  end

  def active_or_payment?
    status.include?('payment') || active?
  end

  private #==========================================================

  def initialize_dates
    if wizard_finished?
      self.start_date = Time.zone.now
      self.end_date = start_date + publication_type.publication_days.days
      self.active = true
    end
  end
end
