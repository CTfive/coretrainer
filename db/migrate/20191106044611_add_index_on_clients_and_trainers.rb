class AddIndexOnClientsAndTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :user_id, :integer
    add_index :trainers, :user_id
    add_column :clients, :user_id, :integer
    add_index :clients, :user_id
  end
end
