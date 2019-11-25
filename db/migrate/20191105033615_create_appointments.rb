class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :client
      t.belongs_to :trainer
    end
  end
end
