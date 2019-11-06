class AddIndexWorkoutsAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :appointment_id, :string
    add_index :workouts, :appointment_id
    add_column :workouts, :trainer_id, :string
    add_index :workouts, :trainer_id
  end
end