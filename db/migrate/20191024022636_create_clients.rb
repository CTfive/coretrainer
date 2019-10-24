class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :age
      t.float :height
      t.integer :weight
      t.date :age
      t.integer :user_id

      t.timestamps
    end
    add_reference :clients, :users, index: true
  end
end
