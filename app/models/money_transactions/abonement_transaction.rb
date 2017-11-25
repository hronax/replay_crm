class MoneyTransaction::AbonementTransaction < MoneyTransaction
  enum transaction_type: [:decrease_abonement]
end
