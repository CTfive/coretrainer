class AddIndexWorkoutsAppointment < ActiveRecord::Migration[5.2]
  def change
    # add_reference :appointments, :client, on_delete: :cascade
    # add_reference :appointments, :trainer, on_delete: :cascade
    # add_foreign_key :appointments, :clients
    # add_foreign_key :appointments, :trainers
  end
end
