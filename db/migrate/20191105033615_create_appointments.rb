class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer  :client_id
      t.integer  :trainer_id
      t.datetime :start_date
      t.datetime :end_date
    end
    add_index :appointments, :client_id
    add_index :appointments, :trainer_id
  end
end
