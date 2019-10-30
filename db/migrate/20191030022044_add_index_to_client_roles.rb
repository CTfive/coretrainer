class AddIndexToClientRoles < ActiveRecord::Migration[5.2]
  def change
  	add_column :clients, :role_id, :string
  	add_index :clients, :role_id
  end
end
