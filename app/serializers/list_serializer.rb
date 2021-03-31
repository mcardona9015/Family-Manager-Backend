class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :updated_at
  has_many :list_items
end
