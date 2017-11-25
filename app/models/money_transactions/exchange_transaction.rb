class MoneyTransaction::ExchangeTransaction < MoneyTransaction
  enum transaction_type: [:add_exchange, :get_exchange]
end
