class CreateDoctorLoginStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :doctor_login_statuses do |t|
      t.integer :doctor_id
      t.boolean :is_login
      t.timestamps
    end
  end
end
