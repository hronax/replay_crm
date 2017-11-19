class RenameTransactionsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :transactions, :cash_transactions
  end
end
