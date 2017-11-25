class Visit < ApplicationRecord
  has_one :cash_transaction
  belongs_to :user, class_name: User
  has_and_belongs_to_many :clients, class_name: User::Client
  belongs_to :bonus
  belongs_to :bonus_source
  belongs_to :abonement

  enum ps_number: [:ps_1, :ps_2, :ps_3, :ps_4, :ps_5]
  enum visit_type: [:for_one, :for_two, :vr, :hookah, :kitchen, :certificate, :bar, :abonement, :tournament]

end
