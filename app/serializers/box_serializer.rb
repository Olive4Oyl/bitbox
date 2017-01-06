class BoxSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :age_recommendation, :image
  
end
