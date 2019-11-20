class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :trainer_id
      t.integer :client_id

      t.timestamps
    end
    add_index :relations, :trainer_id
    add_index :relations, :client_id
  end
end
