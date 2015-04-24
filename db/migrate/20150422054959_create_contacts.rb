class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :name
      t.integer :phone
      t.string :email
      t.text :address

      t.timestamps null: false
    end
  end
end
