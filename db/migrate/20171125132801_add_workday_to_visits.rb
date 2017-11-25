class AddWorkdayToVisits < ActiveRecord::Migration[5.1]
  def change
    add_column :visits, :work_day_id, :integer, null: false
  end
end
