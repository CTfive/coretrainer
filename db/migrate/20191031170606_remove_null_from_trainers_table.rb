class RemoveNullFromTrainersTable < ActiveRecord::Migration[5.2]
  def change
  	change_column_null(:trainers, :athletic_background, true)
  	change_column_null(:trainers, :started_training, true)
  	change_column_null(:trainers, :specialties, true)
  	change_column_null(:trainers, :bio, true)
  	change_column_null(:trainers, :location, true)
  	change_column_null(:trainers, :certificate_id, true)
	 end
end
