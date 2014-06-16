class Pin < ActiveRecord::Base
	# validates the description
	validates :description, presence: true 
end
