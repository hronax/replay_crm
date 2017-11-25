class MoneyTransaction < ApplicationRecord
  belongs_to :user, :class_name => 'User'

  validates_presence_of :user, :amount, :transaction_type
end
