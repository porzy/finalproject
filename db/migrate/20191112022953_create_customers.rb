# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :postalcode
      t.references :province
      t.integer :admin

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
