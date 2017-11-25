class CreateWorkDays < ActiveRecord::Migration[5.1]
  def change
    create_table :work_days do |t|
      t.belongs_to :user
      t.integer :work_start
      t.integer :work_end
      t.date :work_day_date
      t.timestamps
    end
  end
end
