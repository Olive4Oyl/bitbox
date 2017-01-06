class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :level, :subtitle, :description, :shipping_info
  
end
