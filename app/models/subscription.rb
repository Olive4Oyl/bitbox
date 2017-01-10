class Subscription < ApplicationRecord
	belongs_to :box, optional: true
	belongs_to :subscriber, :class_name => "User", optional: true
	accepts_nested_attributes_for :box

	# def box_attributes=(box)
	# 	self.box = Box.find_or_create_by(name: box.name)
	# 	self.box.update(box)
	# end

	def level_with_descript
		"#{level}, #{description}"
	end
end
