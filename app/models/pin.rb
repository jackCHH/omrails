class Pin < ActiveRecord::Base

	belongs_to :user
	#each pin has an attachment file of an image, and we define medium as 320 by 240
	has_attached_file :image, styles: {medium: "320x240"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	# validates the description
	validates :description, presence: true 
	validates :user_id, presence: true
	# validates paperclip
	#validates_attachment :image, presence: true, content_type: { content_type: ["image/jpeg", "image/jpg", "image/png", "image/gif"]}, size: { less_than: 5.megabytes }

	
end
