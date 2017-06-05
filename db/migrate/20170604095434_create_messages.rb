class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :user_id
      t.integer :user_kind
      t.text :content
      
      t.timestamps
    end
  end
end
