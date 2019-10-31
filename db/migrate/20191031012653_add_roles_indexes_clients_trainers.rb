class AddRolesIndexesClientsTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :role_id, :bigint
    add_index :trainers, :role_id
  end

  def change
    add_column :clients, :role_id, :bigint
    add_index :clients, :role_id
  end
end
