class Pin < ActiveRecord::Base
	include ActiveModel::MassAssignmentSecurity
	attr_accessible :description, :user, :user
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
end
