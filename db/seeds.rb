# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   

User.create(name: 'admin',role: 1, email:'admin@sample.pt', password:'123456', remember_token:'sdfs')

5.times do |i|
   sen = Sensor.create(idusers: 1, sensor_desc: 'temp_Seed', mac: '00:00:00:00:00', max: 80, min: 0)
   SensorHistory.create(value: i*2, time: Time.now, sensors_id:sen.id )
end

