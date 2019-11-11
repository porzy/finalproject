# frozen_string_literal: true

class User < ApplicationRecord
  has_many :orders
  belongs_to :province
  validates :name, :province, :address, :postalcode, :admin, presence: true
end
