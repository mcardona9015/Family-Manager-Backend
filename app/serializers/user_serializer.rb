class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :email
  has_many :photo_albums
  has_many :lists
  has_many :calendars
end
