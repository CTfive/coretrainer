class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
    	t.integer :user_id

      t.timestamps
    end
  end
end
