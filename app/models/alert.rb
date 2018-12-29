class Alert < ApplicationRecord
	validates :sensors_id, presence: true
	validates :message, presence: true
	validates :min, presence: true
	validates :max, presence: true
	has_one :sensor
	attr_accessor :sensor_name
	attr_accessor :user_id

end