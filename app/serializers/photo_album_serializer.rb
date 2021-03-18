class PhotoAlbumSerializer < ActiveModel::Serializer
  attributes :id, :title
  # has_one :user
  has_many :photos
end
