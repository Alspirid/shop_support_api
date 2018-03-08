class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id, null: false
      t.integer :user_id, null: false
      t.integer :shop_id, null: false
      t.string :license, null: false
      t.timestamps
    end
    add_index :orders, :order_id
    add_index :orders, :user_id
    add_index :orders, :shop_id
    add_index :orders, :license
  end
end
