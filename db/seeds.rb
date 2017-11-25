# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User::Admin.create(email: 'admin@example.com', password: 'password')
User::Manager.create(email: 'manager@example.com', password: 'password')
User::Client.create(email: 'client@example.com', password: 'password')

WorkDay.create(user: User::Manager.first, work_start: '10:00', work_end: '18:00', work_day_date: '25.11.2017')