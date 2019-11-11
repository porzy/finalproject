# frozen_string_literal: true

class AddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password, :string
    remove_column :users, :province
  end
end
