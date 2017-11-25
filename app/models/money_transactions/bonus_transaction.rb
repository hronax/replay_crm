class MoneyTransaction::BonusTransaction < MoneyTransaction
  enum transaction_type: [:add_bonuses, :spend_bonuses]
end
