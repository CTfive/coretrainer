class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string   "client_id", null: false
      t.string   "trainer_id", null: false  
      t.datetime "start"
      t.datetime "end"
    end
    add_index :appointments, :client_id
    add_index :appointments, :trainer_id
  end
end
