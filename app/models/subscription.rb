class Subscription < ApplicationRecord
	belongs_to :boxes
	belongs_to :users
end
