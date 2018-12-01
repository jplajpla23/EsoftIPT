class SensorHistory < ApplicationRecord
    #has_one :sensors
    #belongs_to :sensors
    #belongs_to :sensors,  foreign_key: "sensors_id"
    validates :sensors_id, presence: true
    validates :sensors_historycol, presence: true, format:{ with: /\A[a-zA-Z]+\z/}
    validates :time, presence: true
end
