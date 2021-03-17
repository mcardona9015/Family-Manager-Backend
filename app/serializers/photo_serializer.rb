class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :favorite, :url, :public_id, :photo_album_id
  # has_one :photo_album
end
