class User < ApplicationRecord

  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cash_transactions


  def admin?
    is_a? User::Admin
  end

  def manager?
    is_a? User::Manager
  end

  def client?
    is_a? User::Client
  end
end
