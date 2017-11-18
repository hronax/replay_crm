class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    drop_table :cashboxes

    create_table :transactions do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :visit_id
      t.integer :transaction_type

      t.timestamps
    end
  end
end
