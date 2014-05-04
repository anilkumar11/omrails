class User < ActiveRecord::Base
	include ActiveModel::MassAssignmentSecurity
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :pins
  has_many :pins, :dependent => :destroy
  accepts_nested_attributes_for :pins, :allow_destroy => true
end
