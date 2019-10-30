class AddIndexToTrainerRoles < ActiveRecord::Migration[5.2]
  def change
  	add_column :trainers, :role_id, :string
  	add_index :trainers, :role_id
  end
end
