class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :level, :subtitle, :description, :shipping_info
  belongs_to :subscriber, :class_name => "User"
  belongs_to :box
end
