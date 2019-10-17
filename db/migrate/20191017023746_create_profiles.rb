class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string  :name
      t.string  :phone
      t.integer :age
      t.float   :height
      t.timestamps
    end
  end
end
