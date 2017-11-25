class Abonement < ApplicationRecord
  belongs_to :manager, class_name: User::Manager
  belongs_to :client, class_name: User::Client

  enum abonement_type: [:for_one, :for_two, :vr]
end
