class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.text :exercises
      t.text :sets
      t.text :reps
      t.text :notes

      t.timestamps
    end
  end
end
