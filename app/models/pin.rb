class Pin < ActiveRecord::Base
	include ActiveModel::MassAssignmentSecurity
	attr_accessible :description
	validates :description, presence: true
end
