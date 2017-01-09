class BoxSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :age_recommendation, :image, :sub_box_level, :sub_box_info, :sub_box_guide
  has_many :subscriptions
end
