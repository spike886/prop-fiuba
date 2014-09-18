class Publication < ActiveRecord::Base
  belongs_to :property
  belongs_to :user
  belongs_to :publication_type
  has_one :location, through: :property

  OPERATION_TYPES = ["Venta", "Alquiler", "Alquiler temporal"]
  CURRENCY = ["$", "u$s"]

  validates :property_id, :user_id, :publication_type_id, :operation_type, :currency, :price, presence: true

  validates :operation_type, inclusion: {in: OPERATION_TYPES}

  before_create :initialize_dates

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

  private #==========================================================

  def initialize_dates
    if publication_type
      self.start_date = Time.zone.now
      self.end_date = start_date + publication_type.publication_days.days
      self.active = true
    end
  end
end
