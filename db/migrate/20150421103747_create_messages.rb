class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :reciver_id
      t.text :msg
      t.string :sendername
      t.string :toname
      t.timestamps null: false
    end
  end
end
