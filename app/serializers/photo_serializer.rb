class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :favorite, :url
  has_one :photo_album
end
