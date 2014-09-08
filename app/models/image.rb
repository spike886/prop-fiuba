class Image < ActiveRecord::Base
  belongs_to :property
  has_attached_file :file, styles: { thumb: ["640x640>", :png] }
  validate :file, presence: true
  validates_attachment_content_type :file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
