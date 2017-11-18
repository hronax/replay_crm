class SingleInstanceValidator < ActiveModel::Validator
  def validate(record)
    if record.id != record.class.first.id
      record.errors[:existance] << 'Cashbox already exist!'
    end
  end
end

class Cashbox < ApplicationRecord
  include ActiveModel::Validations
  validates_with SingleInstanceValidator

  def self.instance
    self.first_or_create
  end

  def add_cash addition
    update! amount: amount + addition
  end

  def get_cash removal
    update! amount: amount - removal
  end

  def add_exchange addition
    update! exchange: exchange + addition
  end

  def get_exchange removal
    update! exchange: exchange - removal
  end
end