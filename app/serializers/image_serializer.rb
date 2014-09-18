class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url

  def url
    file.url
  end
end
