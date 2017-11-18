class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :transactions

  def admin?
    type == 'Admin'
  end

  def manager?
    type == 'Manager'
  end

  def client?
    type == 'Client'
  end
end
