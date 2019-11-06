class AddIndexToAppointments < ActiveRecord::Migration[5.2]
  def change
    change_table :appointments do |t|
      t.string :workout_id
      t.string :workoutlog_id
    end
    add_index :appointments, :workout_id
    add_index :appointments, :workoutlog_id
  end
end
