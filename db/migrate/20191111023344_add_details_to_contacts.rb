# frozen_string_literal: true

class AddDetailsToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :title, :string
    add_column :contacts, :name, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :email, :string
    add_column :contacts, :location, :string
    remove_column :contacts, :contact
  end
end
