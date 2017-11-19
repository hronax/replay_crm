class AddBonusesAndMore < ActiveRecord::Migration[5.1]
  def change
    create_table :bonuses do |t|
      t.integer :bonus_type
      t.string :name
      t.integer :amount
    end

    create_table :bonus_sources do |t|
      t.string :name
    end

    create_table :abonements do |t|
      t.integer :abonement_type
      t.integer :manager_id
      t.integer :client_id
      t.integer :nominal
      t.integer :balance
    end

    create_table :users_visits do |t|
      t.integer :user_id
      t.integer :visit_id
    end
    add_index :users_visits, :user_id
    add_index :users_visits, :visit_id
  end
end
