class Sensor < ApplicationRecord
    has_many :sensor_histories
    has_many :alerts
    validates :mac, presence: true, length: {maximum: 17}, format: { with: /^([0-9a-fA-F]{2}[:-]){5}[0-9a-fA-F]{2}$/i }
    validates :sensor_desc, presence: true, length: {maximum: 50}, format: { with: /\A[a-zA-Z]+\z/ }
    validates :max, presence: true
    validates :min, presence: true
end