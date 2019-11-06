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
      
      t.timestamps
    end
  end
end
