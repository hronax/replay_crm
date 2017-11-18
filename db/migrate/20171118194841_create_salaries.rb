class CreateSalaries < ActiveRecord::Migration[5.1]
  def change
    create_table :salaries do |t|
      t.integer :amount       
      t.integer :admin_id
      t.integer :manager_id
      t.timestamps
    end
  end
end
