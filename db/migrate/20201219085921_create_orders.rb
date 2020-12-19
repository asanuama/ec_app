class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postalcode
      t.string :delivery_address
      t.string :delivery_name
      t.integer :postage, default: 800
      t.integer :total_price
      t.integer :payment_method
      t.integer :order_status, default: 0
      t.timestamps
    end
  end
end
