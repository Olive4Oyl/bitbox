class Box < ApplicationRecord
	has_many :subscriptions
	has_many :users, through: :subscriptions

	# def print_price
	# 	'%.2f' %(self.price/100.0)
	# end

end
