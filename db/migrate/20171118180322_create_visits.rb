class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :ps_number
      t.datetime :game_start
      t.datetime :game_end
      t.integer :user_id
      t.integer :visit_type
      t.integer :transaction_id
      t.integer :additional_gamepads_count
      t.integer :bonus_id
      t.integer :bonus_source_id
      t.integer :abonement_id

      t.timestamps
    end
  end
end
