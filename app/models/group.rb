class Group < ApplicationRecord
	has_one :user
	validates :user_id, presence: true
	validates :description, presence:true
	attr_accessor :count
end
