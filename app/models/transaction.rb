class Transaction < ApplicationRecord
  belongs_to :user, :class_name => 'User::User'
  belongs_to :visit

  validates_presence_of :user, :amount, :type

  enum transaction_type: [:income, :outgo, :get_cash, :add_exchange, :get_exchange]
end
