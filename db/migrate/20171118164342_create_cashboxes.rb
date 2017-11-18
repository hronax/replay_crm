class CreateCashboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :cashboxes do |t|
      t.integer :amount, default: 0
      t.integer :exhcange, default: 0
    end
  end
end
