class AddTypeToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :type, :string, default: 'User::Client'
  end

  def down
    remove_column :users, :type
  end
end
