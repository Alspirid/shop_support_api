class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.integer :shop_id, null: false
      t.string :shop_name, null: false
      t.timestamps
    end
    add_index :shops, :shop_id
    add_index :shops, :shop_name
  end
end
