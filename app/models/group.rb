class Group < ApplicationRecord
	validates :user_id, presence: true
	validates :description, presence:true
end
