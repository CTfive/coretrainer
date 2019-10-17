class AddIndexUsersProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :user_id, :string
    add_index :profiles, :user_id
  end
end
