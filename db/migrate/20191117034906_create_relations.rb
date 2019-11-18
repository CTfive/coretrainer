class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.string :client_id
      t.string :trainer_id
      t.string :appointment_id
      t.timestamps
    end
    add_index :relations, :client_id
    add_index :relations, :trainer_id
    add_index :relations, :appointment_id
  end
end
