class ModDoctorLoginStatus < ActiveRecord::Migration[5.1]
  def change
    add_index :doctor_login_statuses, :doctor_id, :unique => true
  end
end
