# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :province
  has_many :orders

  # validates :name, :province, :address, :postalcode, :admin, presence: true
end
