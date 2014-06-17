class Pin < ActiveRecord::Base
	# validates the description
	validates :description, presence: true 
	validates :user_id, presence: true
	belongs_to :user
end
