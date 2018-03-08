class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id, null: false
      t.string :email, null: false
      t.string :num_lic_sent, default: 0  
      t.timestamps
    end
    add_index :users, :user_id
    add_index :users, :email
  end
end
