# frozen_string_literal: true

class AddProvince2ToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:users, :province_id)
  end
end
