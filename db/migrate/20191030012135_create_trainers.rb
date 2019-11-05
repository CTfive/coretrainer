class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
			t.text "athletic_background"
			t.date "started_training"
			t.text "specialties"
			t.text "bio"
			t.text "availability"
			t.string "location"
			t.string "certificate_id"
			t.text "other_credentials"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
