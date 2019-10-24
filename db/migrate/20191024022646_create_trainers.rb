class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :phone_number
      t.integer :age
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
    add_reference :trainers, :users, index: true
  end
end
