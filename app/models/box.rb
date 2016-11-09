class Box < ApplicationRecord
	has_many :subscriptons
	has_many :users, through: :subscriptons
end
