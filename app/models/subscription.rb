class Subscription < ApplicationRecord
	belongs_to :boxes
	belongs_to :subscriber, :class_name => "User"
end
