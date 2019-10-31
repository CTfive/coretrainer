class RolifyCreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table(:roles) do |t|
      t.string :client
      t.string :trainer 
      t.string :admin
      t.string :name
      t.references :resource, :polymorphic => true
      t.integer :trainer_id
      t.integer :client_id
      t.timestamps
    end

    create_table(:users_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end
    
    add_index(:roles, [:trainer, :trainer_id])
    add_index(:roles, [:client, :client_id])
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:users_roles, [ :user_id, :role_id ])
  end
end
