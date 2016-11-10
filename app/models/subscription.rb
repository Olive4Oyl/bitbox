class Subscription < ApplicationRecord
	belongs_to :box
	belongs_to :subscriber, :class_name => "User"
	accepts_nested_attributes_for :box

end
