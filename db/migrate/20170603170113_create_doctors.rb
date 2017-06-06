class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :graduated_from
      t.string :graduated_year
      t.string :specialism
      t.string :belong_conference
      t.timestamps
    end
  end
end
