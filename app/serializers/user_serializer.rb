class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :subscriptions

end
