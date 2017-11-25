class ChangeAbonementHoursToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :abonements, :nominal, :float
    change_column :abonements, :balance, :float
  end
end
