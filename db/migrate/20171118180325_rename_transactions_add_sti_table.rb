class RenameTransactionsAddStiTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :cash_transactions, :money_transactions
    add_column :the_transactions, :type, :string
  end
end
