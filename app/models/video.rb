class Video < ActiveRecord::Base
  belongs_to :property, inverse_of: :videos
  validate :url, presence: true
end
