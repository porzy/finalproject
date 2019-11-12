# frozen_string_literal: true

class AddProvinces2ToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:users, :province_id, index: true, foreign_key: true)
  end
end
