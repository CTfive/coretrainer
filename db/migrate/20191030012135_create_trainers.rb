class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
    	t.text :athletic_background, null: false
    	t.date :started_training, null: false
    	t.text :specialties, null: false
    	t.text :bio, null: false
    	t.text :availability
    	t.string :location, null: false
    	t.string :certificate_id, null: false
    	t.text :other_credentials

      t.timestamps
    end
  end
end
