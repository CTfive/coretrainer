class CreateBioMetricsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :biometrics do |t|
      t.string  :name, null: false
      t.string  :phone, null: false
      t.date    :birthday, null: false
      t.float   :height, null: false
      t.integer :starting_weight, null: false
      t.integer :current_weight
      t.integer :goal_weight, null: false
      t.text    :notes
      t.timestamps
    end
  end
end
