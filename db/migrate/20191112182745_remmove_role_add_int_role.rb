class RemmoveRoleAddIntRole < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :role, :string
    add_column :users, :role, :integer, default: 0
  end

  def down 
    remove_column :users, :role, :integer, default: 0
    add_column :users, :role, :string
  end
end
