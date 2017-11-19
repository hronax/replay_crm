class ExchangeTransaction < TheTransaction
  enum transaction_type: [:add_exchange, :get_exchange]
end
