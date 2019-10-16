class CreateBiometrics < ActiveRecord::Migration[5.2]
  def change
    create_table :biometrics do |t|

      t.timestamps
    end
  end
end
