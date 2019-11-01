class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
    	t.float :height
    	t.float :weight
    	t.date :birthday
  		t.text :injuries
  		t.text :goals
  		t.text :athletic_background
  		t.text :work_history
			t.string :location

      t.timestamps
    end
  end
end
