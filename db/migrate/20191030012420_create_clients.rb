class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
			t.float :height
			t.date :birthday
			t.text :injuries
			t.text :goals
			t.text :athletic_history
			t.text :current_work
			t.string :location
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
			t.text :notes
    end
  end
end
