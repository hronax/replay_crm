class BonusTransaction < TheTransaction
  enum transaction_type: [:add_bonuses, :spend_bonuses]
end
