class Pin < ActiveRecord::Base
	include ActiveModel::MassAssignmentSecurity
	attr_accessible :description, :image, :user, :id

	validates :description, presence: true
	validates :user_id, presence: true

	has_attached_file :image, styles: { medium: "320x240>"}, 
										 whiny: false
	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

	belongs_to :user
end
