class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :province
      t.string :postalcode
      t.integer :admin

      t.timestamps
    end
  end
end
