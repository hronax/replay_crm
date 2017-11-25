class WorkDay < ApplicationRecord
  has_many :visits
  belongs_to :user
  MIN_WORK_START = '10:00'
  has_many :money_transactions, through: :visits
  time_of_day_attr :work_start, :work_end

  validates_presence_of :user

  validate :user_not_client

  def user_not_client
    errors.add(:user, "Workday employee shouldn't be client ") unless user.manager? || user.admin?
  end

  # def work_start= (value)
  #   value = MIN_WORK_START if int_time(MIN_WORK_START) > int_time(value)
  #   super(value)
  # end
  private

    # def int_time(value)
    #   value.is_a?(Integer) ? value : Time.parse(value).seconds_since_midnight
    # end

  # in the system
  # period  duration sum(work_end) - sum(work_start)
  #day duration = (work_end - work_start)/3600.0


end
