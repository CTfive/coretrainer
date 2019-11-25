class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title 
      t.string  :description
      t.string :exercise
      t.integer :sets
      t.float :reps 
      t.float :lbs
      t.float :miles
      t.integer :trainer_id, null: false
      t.timestamps
    end
    add_index :workouts, :trainer_id
  end
end
