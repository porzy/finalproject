class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :product
      t.references :order

      t.timestamps
    end
  end
end
