# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :user
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total_price

      t.timestamps
    end
  end
end
