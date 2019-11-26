class CreateWorkoutLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :workoutlogs do |t|
      t.integer :client_id, null: false
      t.integer :appointment_id, null: true
      t.datetime :date
      t.float :weight
      t.integer :mood
      t.text :notes
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    add_index :workoutlogs, :client_id
    add_index :workoutlogs, :appointment_id
  end
end
