class Sensor < ApplicationRecord
    has_many :sensor_histories
    has_many :alerts
    #validates :mac, presence: true, length: {maximum: 17}, format: { with: /^([0-9a-fA-F]{2}[:-]){5}[0-9a-fA-F]{2}$/i }
    #validates :sensor_desc, presence: true, length: {maximum: 50}, format: { with: /\A[A-z\ ]+\z/ } ([A-F0-9]{2}[-:.]?{6})
    validates :mac, presence: true, length: {maximum: 17}
    validates :sensor_desc, presence: true, length: {maximum: 50}
    validates :max, presence: true
    validates :min, presence: true
end