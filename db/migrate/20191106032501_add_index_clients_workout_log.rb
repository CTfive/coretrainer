class AddIndexClientsWorkoutLog < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :workoutlog_id, :string
    add_index :clients, :workoutlog_id
  end
end
