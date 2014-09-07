class Image < ActiveRecord::Base
  belongs_to :property
  has_attached_file :file, styles: { thumb: ["640x640>", :png] }
  validate :file, presence: true
end
