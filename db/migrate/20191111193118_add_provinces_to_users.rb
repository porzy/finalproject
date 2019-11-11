# frozen_string_literal: true

class AddProvincesToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :province
    add_reference :users, :province, null: true, foreign_key: true
  end
end
