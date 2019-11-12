# frozen_string_literal: true

class AddProvince3ToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :province_id
    add_reference :users, :province
  end
end
