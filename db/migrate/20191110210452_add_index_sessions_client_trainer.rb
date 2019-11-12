class AddIndexSessionsClientTrainer < ActiveRecord::Migration[5.2]
  def change
    add_column  :sessions, :trainer_id, :integer
    add_column  :sessions, :client_id, :integer
    add_index  :sessions, :trainer_id
    add_index  :sessions, :client_id
  end
end
