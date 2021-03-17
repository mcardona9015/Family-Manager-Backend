class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :email
  # has_many :photo_albums
end
