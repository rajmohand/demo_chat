class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :contactno
      t.text :about
      t.text :address
      t.integer :age

      t.timestamps null: false
    end
  end
end
