class AddUserAttrtributes < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string  :name, null: false
      t.string  :phone, null: false
      t.date    :birthday, null: false
      t.float   :height, null: false
      t.integer :starting_weight, null: false
      t.integer :current_weight
      t.integer :goal_weight, null: false
      t.text    :notes
    end
  end
end
