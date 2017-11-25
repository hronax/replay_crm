class MoneyTransaction::CashTransaction < MoneyTransaction
  belongs_to :visit

  enum transaction_type: [:income, :outgo, :get_cash]
end
