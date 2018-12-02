class Sensor < ApplicationRecord
    has_many :sensor_histories
    has_many :alerts
end