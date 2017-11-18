class Salary < ApplicationRecord
    belongs_to :manager, class_name: "User::Manager", foreign_key: "manager_id"
    belongs_to :admin, class_name: "User::Admin", foreign_key: "admin_id"

    validates_presence_of :manager, :admin, :amount    
end
