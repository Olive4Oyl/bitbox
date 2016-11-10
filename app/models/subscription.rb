class Subscription < ApplicationRecord
	belongs_to :box
	belongs_to :subscriber, :class_name => "User"

end
