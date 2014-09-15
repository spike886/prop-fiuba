class PublicationType < ActiveRecord::Base
  has_many :publications
  has_and_belongs_to_many :characteristics
end
