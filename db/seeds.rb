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
Rails.application.eager_load!
Abonement.create(abonement_type: :for_one, manager: User::Manager.first, client: User::Client.first, nominal: 20, balance: 20 )
WorkDay.create(user: User::Manager.first, work_start: '10:00', work_end: '18:00', work_day_date: '25.11.2017')
Bonus.create(bonus_type: 1, amount: 3, name: 'bla')
BonusSource.create(name: 'bla')

Salary.create(amount: 5000, admin: User::Admin.first, manager: User::Manager.first)
MoneyTransaction::AbonementTransaction.create(    amount: 50 + rand(150), user: User::Client.first, visit_id: rand(3), transaction_type: 0)
MoneyTransaction::BonusTransaction.create(        amount: 50 + rand(150), user: User::Client.first, visit_id: rand(3), transaction_type: rand(2))
MoneyTransaction::CashTransaction.create(         amount: 50 + rand(150), user: User::Client.first, visit_id: rand(3), transaction_type: rand(3))
MoneyTransaction::ExchangeTransaction.create(     amount: 50 + rand(150), user: User::Client.first, visit_id: rand(3), transaction_type: rand(2))

3.times do
  wd = WorkDay.first
  dt = wd.work_day_date.to_datetime + 10.hours
  range = (dt..dt+7.hours)
  time_start =  rand(range)
  Visit.create(ps_number: rand(4), game_start: time_start, game_end: time_start + rand(120).minutes,
               user: User::Manager.first, clients: [User::Client.first], work_day: wd, visit_type: rand(9),
               bonus: Bonus.first, bonus_source: BonusSource.first, abonement: Abonement.first)
end

