class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
    	t.float :height, null: false
    	t.float :weight, null: false
    	t.date :birthday, null: false
  		t.text :injuries, null: false
  		t.text :goals, null: false
  		t.text :athletic_background, null: false
  		t.text :work_history, null: false
  		t.string :location, null: false

      t.timestamps
    end
  end
end
