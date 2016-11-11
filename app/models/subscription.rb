class Subscription < ApplicationRecord
	belongs_to :box
	belongs_to :subscriber, :class_name => "User"
	accepts_nested_attributes_for :box

	#hard code in the nested attributes when I get the service !!!
	# def box_attributes= (attributes)
	# 	attributes.value.each do |att|

	# 	end
	# end

end
