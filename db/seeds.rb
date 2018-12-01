# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
   sen = Sensor.create(idusers: i, sensor_desc: "OH Maluco", max: i*2, min: i/2 )
   SensorHistory.create(value: i*2, time: Time.now, sensors_historycol: "History of sensor ##{i}", sensors_id:sen.id )
end

