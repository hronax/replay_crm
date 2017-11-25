class WorkDay < ApplicationRecord
  has_many :visits
  belongs_to :user
  has_many :transactions, through: :visits

end
