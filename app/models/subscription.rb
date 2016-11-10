class Subscription < ApplicationRecord
	belongs_to :box, optional: true
	belongs_to :subscriber, :class_name => "User", optional: true

end
